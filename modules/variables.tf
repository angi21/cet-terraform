variable "rule-name" {
  type          = string
  description   = "Name of the Firewall rule"
}
variable "project_name" {
    type = string
    default = "nokia-tcs-enablement"
    description = "Target project Name"
}
variable "region" {
    type = string
    default = "us-central1"
    description = "Region for the project"
}
variable "network" {
  type          = string
  default       = "default"
  description   = "The name or self_link of the network to attach this firewall to"
}
variable "protocol" {
  type          = string
  default       = "tcp"
  description   = "The name of the protocol to allow"
}
variable "ports" {
  type      = list(number)
  default   = []
}
variable "tags" {
  type        = list(string)
  default     = []
  description = "A list of target tags for this firewall"
}
variable "source_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "A list of source CIDR range to apply this rule."
}
variable "subnet_name" {
    type = string
    default = "test-subnetwork"
    description = "Name of the subnetwork"
}
variable "subnet_range" {
    type = string
    default = "10.2.0.0/16"
    description = "Subnet range for the subnetwork"
}
variable "gcp_service_list" {
    type = list(string)
    description = "List of API need to be enabled"
}
variable "ip_address" {
    type = string
    default = null
    description = "Internal IP address value"
}
variable "address_type" {
    type = string
    description = "Type of IP address to be provisioned"
}
variable "ip_purpose" {
    type = string
    default = null
    description = "Purpose of the IP address either of GCE_ENDPOINT, VPC_PEERING, and SHARED_LOADBALANCER_VIP"
}
variable "role_title" {
    type = string
    description = "Title for the role"
    default = "test-role"
}
variable "internal_ip_name" {
    type = string
    default = "test-ip"
    description = "Name for the internal IP address"
}
variable "permissions_list" {
    type = list(string)
    description = "List of Permission for creating custom roles"
}