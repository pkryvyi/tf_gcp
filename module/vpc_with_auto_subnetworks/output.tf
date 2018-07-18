output "name" {
  description = "name for network"
  value       = "${google_compute_network.vpc.name}"
}

output "network" {
  description = "url for network"
  value       = "${google_compute_network.vpc.self_link}"
}
