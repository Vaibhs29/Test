terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}
resource "aws_vpc" "MyVpc_New" {
    cidr_block = "15.15.0.0/16"
   
    tags = {
        Name = "New_MyVpc_byJenkins"
      
    }
  }
  resource "aws_subnet" "Subnet-1" {
    vpc_id = aws_vpc.MyVpc_New.id
    cidr_block = "15.15.1.0/24"
    availability_zone = "ap-south-1a"

    tags = {
        Name = "Subnet-1"
      
    }
  }