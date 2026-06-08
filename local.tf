locals {

  env = "dev"

  common_tags = {
    Environment = "dev"
    Team        = "DevOps"
  }

  instance_name = "${local.env}-webserver"
}
