terraform {
  required_version = ">= 1.8"
  required_providers {
    aws = {
      version = ">= 5.64.0"
      source  = "hashicorp/aws"
    }
  }
}
