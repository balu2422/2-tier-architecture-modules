output "web1_public_ip" {
  description = "Public IP of the first EC2 instance"
  value       = module.ec2.web1_public_ip
}

output "web2_public_ip" {
  description = "Public IP of the second EC2 instance"
  value       = module.ec2.web2_public_ip
}

output "rds_endpoint" {
  description = "RDS MySQL instance endpoint"
  value       = module.rds.rds_endpoint
}
