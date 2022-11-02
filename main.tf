variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0de5311b2a443fb89"
  instance_type = "t2.micro"
}
