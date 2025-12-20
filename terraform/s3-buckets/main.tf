provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.buckets)

  bucket = each.value

  tags = {
    Name        = each.value
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "buckets_versioning" {
  for_each = aws_s3_bucket.buckets

  bucket = each.value.id

  versioning_configuration {
    status = "Enabled"
  }
}
