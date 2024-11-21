resource "aws_instance" "myec2" {
  ami = "ami-0166fe664262f664c"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  key_name = "AWSHYD"
  vpc_security_group_ids = [ aws_security_group.mysg.id ]
  associate_public_ip_address = true
  user_data = <<EOF
  #!/bin/bash
  sudo yum update -y
  sudo yum install -y httpd
  sudo systemctl start httpd
  sudo systemctl enable httpd
  echo "<h1>Welcome to Aws Terraform class!!!. This EC2 got created using terraform</h1>" >/var/www/html/index.html
  EOF
  tags = {
    Name = "AmazonLinuxWebServer"
  }
}