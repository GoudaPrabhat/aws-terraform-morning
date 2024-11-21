resource "aws_security_group" "mysg" {
  name = "Allow_All"
  vpc_id = aws_vpc.myvpc.id
  description = "Allow-All-Traffic"
  ingress {
    description = "Allow_All"
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    description = "Allow_All"
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}