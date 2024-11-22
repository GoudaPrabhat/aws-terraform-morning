output "instance_public_ip" {
  description = "This is going to be PUBlic IP of EC2 Instance"
  value       = aws_instance.demo.public_ip
}

output "instance_id" {
  description = "This is ec2 Instance ID"
  value       = aws_instance.demo.id
}