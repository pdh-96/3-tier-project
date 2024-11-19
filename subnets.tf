#첫번쨰 Public Subnet 생성
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_1
  map_public_ip_on_launch = true

  tags = {
    Name = "3-tier_Public_Subnet_1"
  }
}

#두번째 Public Subnet 생성
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_2
  map_public_ip_on_launch = true

  tags = {
    Name = "3-tier_Public_Subnet_2"
  }
}

# 첫 번째 Private Subnet 생성
resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr_1

  tags = {
    Name = "3-tier_Private_Subnet_1"
  }
}

# 두 번째 Private Subnet 생성
resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr_2

  tags = {
    Name = "3-tier_Private_Subnet_2"
  }
}