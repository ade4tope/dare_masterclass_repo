# security group for alb, to allow acess from any where for HTTP and HTTPS traffic
resource "aws_security_group" "ext-alb-sg" {
  name        = "p15-ext-alb-sg"
  vpc_id      = aws_vpc.main.id
  description = "External ALB SG"


  tags = {
    Name            = "p15-ext-alb-sg"
    Enviroment      = "production"
    Owner-Email     = var.owner_email
    Managed-By      = "Terraform"
    Billing-Account = "1234567890"
  }

}