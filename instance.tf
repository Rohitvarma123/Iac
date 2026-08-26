terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  alias  = "us_east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  provider = aws.us_east

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  tags = {
    Name = "web"
  }
}

resource "aws_instance" "web1" {
  provider = aws.mumbai

  ami           = "ami-0ac7b260cf76d8865"
  instance_type = "t3.micro"

  tags = {
    Name = "web1"
  }
}
