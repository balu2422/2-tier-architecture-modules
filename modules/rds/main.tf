resource "aws_db_subnet_group" "default" {
  name        = "${var.name}-db-subnet-group"
  description = "RDS subnet group for ${var.name}"
  subnet_ids  = [var.private_subnet_1_id, var.private_subnet_2_id]

  tags = {
    Name = "${var.name}-db-subnet-group"
  }
}

resource "aws_db_instance" "default" {
  identifier        = "${var.name}-db"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = var.db_instance_class
  allocated_storage = var.db_storage
  db_name           = var.db_name
  username          = var.db_username
  password          = var.db_password
  vpc_security_group_ids = [var.db_security_group_id]
  db_subnet_group_name  = aws_db_subnet_group.default.name
  multi_az            = true
  storage_encrypted   = true
  backup_retention_period = 7
  publicly_accessible = false

  tags = {
    Name = "${var.name}-db"
  }
}

resource "aws_security_group" "db_sg" {
  name        = "${var.name}-db-sg"
  description = "Allow MySQL"
  vpc_id      = var.vpc_id

  ingress {
    description = "MySQL"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-db-sg"
  }
}
