variable "location" {
    description = "The azure region to deploy resources in."
    default = "East US"
  
}

variable "aws_region" {
    description = "The aws region to deploy resources in."
    default = "us-east-1"
}

variable "name" {
    description = " The name of any resource in any cloud provider starts with this"
    default = "infraProject"
  
}