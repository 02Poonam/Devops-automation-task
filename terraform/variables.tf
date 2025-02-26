variable "region" {
  default = "us-west-2"
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
  default   = "password"
  sensitive = true
}

