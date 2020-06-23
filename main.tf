resource "google_project_service" "service-networking-api-enable" {
  for_each = var.services
  project = var.project_id
  service = each.key
  disable_dependent_services = each.value.disable_dependent_services
  disable_on_destroy = each.value.disable_on_destroy
}
