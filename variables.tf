variable "profile" {
  type    = string
  default = "default"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "vpc_cidr" {
  description = "Please entere cidr block"
  type        = string
  default     = "192.168.50.0/24"
}

variable "instance_type" {
  description = "Please chose instance type"
  type        = string
  default     = "t3.medium"
}

variable "ec2_tags" {
  type = map
  default = {
    Name = "appserver"
  }
}

variable "ec2_amis" {
  type = map
  default = {
    eu-west-1 = "ami-0fc970315c2d38f01"
    eu-west-2 = "ami-098828924dc89ea4a"
  }
}

variable "my_app_s3_bucket" {
  type    = string
  default = "terraform-demo-202102171103"
}
