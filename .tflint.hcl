plugin "aws" {
  enabled = true
  version = "0.29.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  region  = "us-east-1"
}

# Format of output (valid values: default, compact, json)
config {
  format = "compact"
}

# --- EC2 Best Practices ---

# 1. EC2 instance must be attached to a VPC (not default VPC)
rule "aws_instance_not_in_default_vpc" {
  enabled = true
}

# 2. EC2 instance must have public IP associated (for SSH/public web)
rule "aws_instance_associate_public_ip_address" {
  enabled = true
}

# 3. EC2 instance type must be valid
rule "aws_instance_invalid_type" {
  enabled = true
}
