terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

variable aws_access_key {}
variable aws_secret_key {}
provider "aws" {
    region = "us-west-2"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}
