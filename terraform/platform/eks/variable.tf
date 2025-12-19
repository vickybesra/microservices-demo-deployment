variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "microservices-project-ng"
}

variable "jumphost_role_name" {
  description = "IAM role name attached to the jumphost EC2 instance"
  type        = string
  default     = "jumphost-iam_role1"
}
