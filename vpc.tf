provider "aws" {
  region = "us-east-1"
  profile = "default"
}
provider "aws"{
    region = "us-west-1"
    alias = "aws-west-1"
}
################# VPC ########################
resource "aws_vpc" "satya_vpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "satya_vpc"
    }
}
resource "aws_vpc" "dev_vpc"{
    provider = aws.aws-west-1
    cidr_block ="101.0.0.0/16"
    tags ={
        Name = "dev_vpc"
    }
}
