terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "swing-trading-terraform-state"
    key            = "infra/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "swing-trading-terraform-locks"
  }
}
