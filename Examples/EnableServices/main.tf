resource "google_project_service" "service_enabled" {
  for_each                   = toset(var.activate_apis)
  project                    = var.project_id
  service                    = each.value
}
