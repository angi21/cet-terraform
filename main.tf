provider "google" {
  project = "nokia-tcs-enablement"
  region  = "us-central1"
}

module "network_firewall" {
    source = "./modules/"
    rule-name = "test"
    network = "vpc-test1"
    protocol = "tcp"
    ports = ["80","22"]
    source_ranges = ["0.0.0.0/0"]
    gcp_service_list = ["iam.googleapis.com"]
    permissions_list = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
    tags = ["test"]
    ip_address = "10.2.0.2"
    address_type = "INTERNAL"
}

// Add a subnet resource for VPC