resource "azurerm_resource_group" "rg" {
    name = "${var.name}-rg"
    location = var.location
  
}

resource "azurerm_virtual_network" "vnet" {
    name = "${var.name}-vnet"
    location = var.location
    address_space = ["10.1.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
  
}

resource "azurerm_subnet" "subnet" {
    name = "${var.name}-subnet"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = ["10.1.1.0/24"]
  
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.22.0.0/16"
  
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.22.2.0/24"
    availability_zone = "us-east-1a"
  
}