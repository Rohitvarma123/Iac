resource "aws_instance" "web1" {
ami = "ami-0aae00de4a3cf9639"
instance_type = "t3.micro"
tags = {
Name = "first server-updated"
}
}

