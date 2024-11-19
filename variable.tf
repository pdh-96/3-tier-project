# VPC CIDR 블록
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}


# Public Subnet CIDR 블록 1
variable "public_subnet_cidr_1" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

# Public Subnet CIDR 블록 2
variable "public_subnet_cidr_2" {
  description = "CIDR block for the public subnet"
  default     = "10.0.2.0/24"
}

# Private Subnet CIDR 블록 1
variable "private_subnet_cidr_1" {
  description = "CIDR block for the first private subnet"
  default     = "10.0.3.0/24"
}

# Private Subnet CIDR 블록 2
variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
  default     = "10.0.4.0/24"
}

# Internet Gateway Name
variable "internet_gateway_name" {
  description = "Name of the Internet Gateway"
  default     = "3-tier_Internet_Gateway"
}

# Elastic IP 이름 (NAT Gateway용)
variable "nat_eip_name" {
  description = "Name for the Elastic IP used by NAT Gateway"
  default     = "3-tier-NAT-EIP"
}

# NAT Gateway 이름
variable "nat_gw_name" {
  description = "Name for the NAT Gateway"
  default     = "3-tier-NAT-Gateway"
}