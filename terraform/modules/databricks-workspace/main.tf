variable "workspace_name" {
  type = string
}

variable "environment" {
  type = string
}

# Placeholder resources. Replace with actual Databricks provider resources.
resource "null_resource" "workspace" {
  triggers = {
    name = var.workspace_name
    env  = var.environment
  }
}