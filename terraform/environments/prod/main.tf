terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "platform-iac-ci-cd/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

module "iam_roles" {
  source = "../../modules/iam-roles"
  project = "platform-iac-ci-cd"
  environment = "prod"
}

module "databricks_workspace" {
  source = "../../modules/databricks-workspace"
  workspace_name = "dbx-prod"
  environment = "prod"
}