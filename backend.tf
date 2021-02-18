terraform {
  required_version = ">=0.13.0"
  backend "s3" {
    region         = "eu-west-1"
    profile        = "default"
    key            = "terraformstatefile.tfstate"
    bucket         = "terraformstateinfo2020"
    dynamodb_table = "terraformlocking"
  }
}
