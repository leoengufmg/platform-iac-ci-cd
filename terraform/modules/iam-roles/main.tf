variable "project" {
  type = string
}

variable "environment" {
  type = string
}

resource "aws_iam_role" "platform_admin" {
  name = "${var.project}-${var.environment}-platform-admin"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = { Service = "ec2.amazonaws.com" },
      Action = "sts:AssumeRole"
    }]
  })
}