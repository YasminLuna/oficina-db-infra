variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "hml"
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "vpc_cidr" {
  type = string
}

variable "db_name" {
  type    = string
  default = "oficina_db"
}

variable "db_user" {
  type    = string
  default = "oficina"
}
