
################# Outputs ################
output "vpc_id" {
  value = aws_vpc.main.id
}


output "internet_gateway_id" {
  value = aws_internet_gateway.ig.id
}


output "external-alb-securtygroup_id" {
  value = aws_security_group.ext-alb-sg.id
}


