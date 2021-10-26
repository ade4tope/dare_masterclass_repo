resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name            = "project-15-main-IG"
    Enviroment      = "production"
    Owner-Email     = "infradev@oldcowboyshop.com"
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}

