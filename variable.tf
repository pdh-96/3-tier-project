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

# Private Subnet CIDR 블록 3
variable "private_subnet_cidr_3" {
  description = "CIDR block for the first private subnet"
  default     = "10.0.5.0/24"
}

# Private Subnet CIDR 블록 4
variable "private_subnet_cidr_4" {
  description = "CIDR block for the second private subnet"
  default     = "10.0.6.0/24"
}

# Internet Gateway Name
variable "internet_gateway_name" {
  description = "Name of the Internet Gateway"
  default     = "3-tier_Internet_Gateway"
}


# Web 서버 설정
variable "web_ami_id" {
  description = "AMI ID for the web server instances"
  default     = "ami-012967cc5a8c9f891"
}

variable "web_instance_type" {
  description = "Instance type for the web server instances"
  default     = "t2.micro"
}

# App 서버 설정
variable "app_ami_id" {
  description = "AMI ID for the app server instances"
  default     = "ami-012967cc5a8c9f891"
}

variable "app_instance_type" {
  description = "Instance type for the app server instances"
  default     = "t2.micro"
}

