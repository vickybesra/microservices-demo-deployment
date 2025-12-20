variable "region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}

variable "buckets" {
  description = "List of S3 bucket names to create"
  type        = list(string)
  default = [
    "milind-platform-tf-state-dev",
    "milind-tf-ec2-state",
  ]
}

variable "environment" {
  description = "Environment tag for the buckets"
  type        = string
  default     = "dev"
}
