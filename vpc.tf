#Create VPC
resource "aws_vpc" "mydemodemo" {
  provider             = aws.region
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "mydemodemo",
    Environment = terraform.workspace
  }
}

#output "vpc_cidr" {
#  value = aws_vpc.mydemodemo.cidr_block
#}
