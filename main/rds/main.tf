# Terraform 초기구성
terraform {
  backend "s3" {
    bucket         = "myterraform-bucket-state-project-kh"
    key            = "rds/terraform.tfstate"
    region         = "ap-northeast-2"
    profile        = "admin_user"
    dynamodb_table = "myTerraform-bucket-lock-project-kh"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-2"
  profile = "admin_user"
}