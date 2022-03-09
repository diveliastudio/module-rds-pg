variable "project_name" {
}

variable "project_environment" {
}

variable "initial_db_name" {
}

variable "engine_version" {
  type = string
  default = "12.9"
}

variable "sg_cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "instance_class" {
  type = string
  default = "db.t2.micro"
}

variable "length_password" {
  type = number
  default = 16
}
