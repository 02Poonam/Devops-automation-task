terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~<4.16"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = var.db_instance_class
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = true
  skip_final_snapshot  = true
  tags = {
    Name = "PB-DB"
  }
}
