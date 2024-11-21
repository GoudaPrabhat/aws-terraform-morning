resource "aws_instance" "vm1" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t2.micro"
}