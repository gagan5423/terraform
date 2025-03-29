provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "gagan_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.tenancy
  tags = {
    Name = "gagan-vpc"
  }
}

resource "aws_subnet" "gagan_subnet" {
  vpc_id            = aws_vpc.gagan_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "gagan-subnet"
  }
}