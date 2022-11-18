#creating networking for project
resource "aws_vpc" "rock-vpc" {
  cidr_block           = var.cidr-for-rock-vpc
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "rock-vpc"
  }
}