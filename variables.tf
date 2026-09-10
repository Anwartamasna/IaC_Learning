variable "aws_region" {
  type        = string
  description = "AWS region for resource deployment"
  default     = "eu-north-1"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.small"
}

variable "key_name" {
  type        = string
  description = "Key pair name in AWS"
  default     = "ec2-t3small-key"
}

variable "allowed_ssh_cidr" {
  type        = string
  description = "Allowed CIDR block for SSH access"
  default     = "0.0.0.0/0"
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key ID (optional, can also be provided via AWS_ACCESS_KEY_ID env var)"
  default     = null
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Access Key (optional, can also be provided via AWS_SECRET_ACCESS_KEY env var)"
  default     = null
  sensitive   = true
}

