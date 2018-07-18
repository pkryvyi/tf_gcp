resource "google_compute_network" "vpc" {
  // create vpc network, with auto creation subnetworks.
  name                    = "${var.name}"
  auto_create_subnetworks = "true"
}
