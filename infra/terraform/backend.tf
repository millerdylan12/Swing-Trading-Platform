terraform {
  backend "s3" {
    bucket         = "swing-trading-terraform-state"
    key            = "infra/terraform.tfstate"
    region         = "us-east-1"                # <<< hard-coded here
    dynamodb_table = "swing-trading-terraform-locks"
  }
}



