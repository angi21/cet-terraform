resource "random_string" "random" {
  length  = 6
  upper   = false
  special = false
}

resource "google_project" "netapp_project" {
  name            = var.project_name
  project_id      = "${var.project_name}-${random_string.random.result}"
}

resource "google_project_service" "gcp_services" {
  count   = length(var.gcp_service_list)
  project = google_project.netapp_project.project_id
  service = var.gcp_service_list[count.index]
  disable_dependent_services = true
}