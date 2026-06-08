resource "aws_instance" "webserver" {

  ami           = "ami-0150189e4c09ffab5"
  instance_type = "t2.micro"

  tags = merge(
    local.common_tags,
    {
      Name = local.instance_name
    }
  )
}
