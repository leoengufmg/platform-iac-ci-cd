terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

module "iam_roles" {
  source = "../../modules/iam-roles"
  project = "platform-iac-ci-cd"
  environment = "dev"
}