
terraform {
  backend "s3" {
    bucket = "anshul-bucket1"
    key    = "new.tfstate"
    region = "ap-south-1"
    dynamodb_table = "anshul-table5"
  }
}
 