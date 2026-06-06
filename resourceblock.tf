resource "aws_instance" "web" {
ami = "ami-0150189e4c09ffab5"
count = 1
instance_type= "t3.micro"
tags = {
Name = "webserver"
}
}
