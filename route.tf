# route table
resource "aws_route_table" "rock-pub-route-table" {
  vpc_id = aws_vpc.rock-vpc.id
  tags   = var.tag5

}

resource "aws_route_table" "rock-priv-route-table" {
  vpc_id = aws_vpc.rock-vpc.id
  tags   = var.tag6
}

# route association public
resource "aws_route_table_association" "public-route-table-association-1" {
  subnet_id      = aws_subnet.rock-public-sub1.id
  route_table_id = aws_route_table.rock-pub-route-table.id
}

resource "aws_route_table_association" "public-route-table-association-2" {
  subnet_id      = aws_subnet.rock-public-sub2.id
  route_table_id = aws_route_table.rock-pub-route-table.id
}

# route association private
resource "aws_route_table_association" "private-route-table-association-1" {
  subnet_id      = aws_subnet.rock-private-sub1.id
  route_table_id = aws_route_table.rock-priv-route-table.id
}

resource "aws_route_table_association" "private-route-table-association-2" {
  subnet_id      = aws_subnet.rock-db-subnet.id
  route_table_id = aws_route_table.rock-priv-route-table.id
}