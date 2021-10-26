# Create VPC
resource "aws_vpc" "main" {
  cidr_block                     = "100.0.0.0/16"
  enable_dns_support             = true
  enable_dns_hostnames           = true
  enable_classiclink             = false
  enable_classiclink_dns_support = false

  tags = {
    Name            = "Project-15-VPC"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }
}

# Create public subnets
resource "aws_subnet" "PublicSubnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name            = "PublicSubnet-1"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}


resource "aws_subnet" "PublicSubnet-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name            = "PublicSubnet-2"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}


resource "aws_subnet" "PrivateSubnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name            = "PrivateSubnet-1"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}


resource "aws_subnet" "PrivateSubnet-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.4.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name            = "PrivateSubnet-2"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}

resource "aws_subnet" "PrivateSubnet-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.5.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1c"

  tags = {
    Name            = "PrivateSubnet-3"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}


resource "aws_subnet" "PrivateSubnet-4" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.6.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1d"

  tags = {
    Name            = "PrivateSubnet-4"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}

