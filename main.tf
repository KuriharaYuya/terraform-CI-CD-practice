# tete
provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "vpc" {
  cidr_block                       = "192.168.0.0/20"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = false
}

terraform {
  backend "remote" {
    organization = "<your_organization>"
    workspaces {
      name = "<your_workspace>"
    }
  }
}
