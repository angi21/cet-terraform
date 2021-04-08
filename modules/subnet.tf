#data "google_compute_network" "network-data" {
#  name = var.network
#}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_range
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_address" "internal_address" {
  name         = var.internal_ip_name
  subnetwork   = google_compute_subnetwork.subnetwork.id
  address_type = var.address_type
  address      = var.ip_address
  region       = var.region
  purpose      = var.ip_purpose
}