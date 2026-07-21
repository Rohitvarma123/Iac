terraform  {
backend "s3" {
bucket = "terra-statfile-bucket"
key = "terraform.tfstate"
region = "ap-southeast-1"
use_lockfile = true
}
}
