# variables.tf

variable "image_tag" {
  description = "The container image tag pushed to ECR (e.g., git commit SHA)"
  type        = string
  default     = "latest"
}

variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-2"
}