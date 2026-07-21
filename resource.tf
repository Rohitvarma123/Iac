resource "aws_instance" "web" {
ami = "ami-0b826bb6d96d2afe4"
provider = aws.us-east-1
instance_type = "t3.micro"
tags = {
Name = "first server-updated"
}
}


