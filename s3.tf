resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl           = var.acl

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.my-s3-bucket.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}
