# nat_gw.tf

# Elastic IP 생성
resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "3-tier_EIP"
  }
}

# NAT Gateway 생성
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_1.id  # Public Subnet에 배치

  tags = {
    Name = "3-tier_NAT_GW"
  }
}

# Private Subnet의 라우팅 테이블에 NAT Gateway 추가
resource "aws_route" "private_route_nat" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"  # 모든 인터넷 트래픽
  nat_gateway_id         = aws_nat_gateway.nat_gw.id  # NAT Gateway를 통해 라우팅

  depends_on = [aws_nat_gateway.nat_gw]  # NAT Gateway가 생성된 후 라우팅을 추가
}