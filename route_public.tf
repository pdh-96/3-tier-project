# Public Routing Table 생성
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "3-tier_Public_Routing_Table"
  }
}

# Public Routing Table에 Internet Gateway 라우트 추가
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# Public Subnet에 Public Routing Table 연결
resource "aws_route_table_association" "public_association_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

# Public Subnet에 Public Routing Table 연결
resource "aws_route_table_association" "public_association_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}
