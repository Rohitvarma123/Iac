resource "aws_instance" "web12" {
  ami           = "ami-0aae00de4a3cf9639"
  instance_type = "t3.micro"

  tags = {
    Name = "second-server"
  }

  lifecycle {
    create_before_destroy = true
  }
}
