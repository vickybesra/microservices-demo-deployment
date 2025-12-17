variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "VPC Name for our Jumphost server"
  type        = string
  default     = "jumphost-vpc"
}

variable "igw_name" {
  description = "Internet Gate Way Name for our Jumphost server"
  type        = string
  default     = "jumphost-igw"
}

variable "subnet_name1" {
  description = "Public Subnet 1 Name"
  type        = string
  default     = "public-Subnet-1"
}

variable "subnet_name2" {
  description = "Subnet Name for our Jumphost server"
  type        = string
  default     = "public-subnet2"
}

# Private subnet name variables
variable "private_subnet_name1" {
  description = "Private Subnet 1 Name"
  type        = string
  default     = "private-subnet1"
}

variable "private_subnet_name2" {
  description = "Private Subnet 2 Name"
  type        = string
  default     = "private-subnet2"
}

variable "rt_name" {
  description = "Route Table Name for our Jumphost server"
  type        = string
  default     = "jumphost-rt"
}

variable "sg_name" {
  description = "Security Group for our Jumphost server"
  type        = string
  default     = "jumphost-sg"
}


variable "iam_role" {
  description = "IAM Role for the Jumphost Server"
  type        = string
  default     = "jumphost-iam_role1"
}

variable "ami_id" {
  description = "Latest AMI (falls back to the latest Amazon Linux 2 if not provided)"
  type        = string
  default     = null
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "m7i-flex.large"
}

variable "key_name" {
  description = "EC2 keypair"
  type        = string
  default     = "milind-dev-key"
}

variable "instance_name" {
  description = "EC2 Instance name for the jumphost server"
  type        = string
  default     = "jumphost-server"
}
