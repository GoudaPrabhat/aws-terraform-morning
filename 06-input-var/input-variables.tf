variable "ec2_ami_id" {
  description = "This is AMi ID"
  type = string
  default = "ami-0166fe664262f664c"
}

variable "instance_type" {
  description = "This is Instance Type"
  type = string
  default = "t2.micro"
}
