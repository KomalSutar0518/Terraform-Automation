terraform {
  backend "s3" {
    bucket = "mys3buckets-1805"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
