variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "public_subnet_1_cidr" {
  type        = string
  description = "CIDR block for Public Subnet 1"
}

variable "public_subnet_2_cidr" {
  type        = string
  description = "CIDR block for Public Subnet 2"
}

variable "private_subnet_1_cidr" {
  type        = string
  description = "CIDR block for Private Subnet 1"
}

variable "private_subnet_2_cidr" {
  type        = string
  description = "CIDR block for Private Subnet 2"
}

variable "az1" {
  type        = string
  description = "Availability Zone 1"
}

variable "az2" {
  type        = string
  description = "Availability Zone 2"
}

variable "name" {
  type        = string
  description = "Name prefix for tags"
}
