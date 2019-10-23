resource "random_id" "random_project_id_suffix" {
  byte_length = 2
}

locals {
project_prefix = random_project_id_suffix.dec
}

resource "google_project" "my_project" {
  name = var.project_name
  project_id = local.project_prefix
  billing_account = var.project_billing_account
}
