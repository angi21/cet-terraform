#data "google_compute_network" "data-network" {
#  name = var.network
#}

resource "google_compute_firewall" "firewall_netapp" {
  name          = "vpc-${var.network}-firewall-${var.rule-name}"
  description   = "Creates firewall rule for target instances"
  network       = google_compute_network.vpc_network.id

  allow {
    protocol = var.protocol
    ports    = var.protocol == "tcp" || var.protocol == "udp" ? var.ports : []
  }

  target_tags   = var.tags
  source_ranges = var.source_ranges
}