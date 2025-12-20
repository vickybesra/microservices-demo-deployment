output "bucket_ids" {
  description = "IDs of the S3 buckets created"

  value = { for k, b in aws_s3_bucket.buckets : k => b.id }
}
