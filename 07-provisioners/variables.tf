variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMi ID"
  default     = "ami-0166fe664262f664c"
}

variable "instance_type" {
  description = "instance type"
  default     = "t2.micro"
}

variable "public_key_path" {
  description = "Path of Public Key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path of Private Key"
  default     = "~/.ssh/id_rsa"
}