terraform {
  backend "s3" {
    bucket         = "my-terraform-state-cy21"
    key            = "global/mystatefile/terraform.tfstate"
    region         = "ca-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "ca-central-1"
}
