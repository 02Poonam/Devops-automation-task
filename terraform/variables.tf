variable "region" {
  default = "us-west-2"
}

variable "AWS_ACCESS_KEY_ID" {
  default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = ""
}

variable "bucket_name" {
  default = "pb-buck"
}

variable "db_instance_class" {
  default = "db.t3.micro"
}

variable "db_name" {
  default = "pbdatabase"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = ""
}

