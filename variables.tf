variable "project_name" {
}

variable "project_environment" {
}

variable "initial_db_name" {
}

variable "source_security_group_id" {
}

variable "engine_version" {
  type = string
  default = "12.9"
}

variable "instance_class" {
  type = string
  default = "db.t2.micro"
}

variable "length_password" {
  type = number
  default = 16
}
