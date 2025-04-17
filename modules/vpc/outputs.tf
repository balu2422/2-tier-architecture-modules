output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet1_id" {
  value = aws_subnet.public_subnet_1.id  # Updated to match the resource name
}

output "public_subnet2_id" {
  value = aws_subnet.public_subnet_2.id  # Updated to match the resource name
}

output "db_security_group_id" {
  value = aws_security_group.rds.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.default.name
}
