provider code

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider

provider "aws" {
  version = "~> 4.0"
  region  = "ap-southeast-1"
}


resource "aws_instance" "web" {
  ami           = "ami-0af2f764c580cc1f9"
  instance_type = "t2.micro"

  tags = {
    Name = "linux-server"
  }
}
