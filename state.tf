terraform {
  backend "s3" {
    bucket = "teju-devops"
    key    = "aws-ssm-parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}

