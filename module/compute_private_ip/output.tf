output "name" {
  description = "Name of instance"

  value = "${google_compute_instance.instance.name}"
}

output "machine_type" {
  description = "Machine type"

  value = "${google_compute_instance.instance.machine_type}"
}

output "zone" {
  description = "Zone"

  value = "${google_compute_instance.instance.zone}"
}

output "tags" {
  description = "Tags"

  value = "${google_compute_instance.instance.tags}"
}
