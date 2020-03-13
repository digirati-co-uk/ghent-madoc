provider "aws" {
  version = "~> 2.46"
  region  = var.region
}

terraform {
  backend "s3" {
    bucket = "ghent-remote-state"
    key    = "terraform.tfstate"
    region = "eu-west-3"
  }
}