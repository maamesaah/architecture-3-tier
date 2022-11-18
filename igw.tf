# internet gateway

resource "aws_internet_gateway" "rock-igw" {
  vpc_id = aws_vpc.rock-vpc.id

  tags = var.rock-igw
}

# aws route
resource "aws_route" "rock-igw-association" {
  route_table_id         = aws_route_table.rock-pub-route-table.id
  gateway_id             = aws_internet_gateway.rock-igw.id
  destination_cidr_block = var.internet-gateway-association
}