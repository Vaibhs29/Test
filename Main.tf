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
resource "aws_vpc" "MyVpc" {
    cidr_block = "15.15.0.0/16"
   
    tags = {
        Name = "MyVpc_byJenkins"
      
    }
  }