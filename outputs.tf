output "virtual_network_name" {
    description = "The name of the Virtual network" 
    value = azurerm_virtual_network.vnet.name
  
}

output "vnet_subnet_id" {
    description = "The ID of the Vnet-subnet"
    value = azurerm_subnet.subnet.id
  
}

output "vpc_id" {
    description = "The ID of the VPC"
    value = aws_vpc.vpc.id
  
}

output "vpc_subnet_id" {
    description = "The id of vpc_subnet"
    value = aws_subnet.subnet.id
  
}