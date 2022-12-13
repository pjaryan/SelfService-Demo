terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-3"
  skip_region_validation = true
  endpoints {
    sts = "https://sts.ap-southeast-3.amazonaws.com"
  }
}
