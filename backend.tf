terraform {
  backend "s3" {
    bucket         = "2-tier-architecture-modules"
    key            = "tf/state1"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "2-tier-architecture-modules-table"
  }
}
