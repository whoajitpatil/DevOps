# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    #   version = "~> 4.64" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

# Resource Block 
resource "aws_instance" "ec2demo" {
  ami = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
}
