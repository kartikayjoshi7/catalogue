module "catalogue-ami"{
  source = "git::https://github.com/kartikayjoshi7/terraform-ami.git"
  COMPONENT= "catalogue"
  APP_VERSION= var.APP_VERSION
}

variable "APP_VERSION" {}

provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "terraform-kartikayj"
    key    = "mutable/catalogue/terraform.tfstate"
    region = "us-east-1"
  }
}

