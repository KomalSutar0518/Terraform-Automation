terraform {
  backend "s3" {
    bucket = "s3-bucket-for-terraform-1"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
