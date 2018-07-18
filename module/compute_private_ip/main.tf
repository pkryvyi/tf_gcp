resource "google_compute_instance" "instance" {
  name         = "${var.instance_name}"
  machine_type = "${var.instance_type}"
  zone         = "${var.zone}"
  tags         = "${var.tags}"

  boot_disk {
    initialize_params {
      image = "${var.distr}"
    }
  }

  network_interface {
    subnetwork = "${var.network}"
  }

  service_account {
    email  = "${var.email}"
    scopes = ["cloud-platform"]
  }

  # metadata_startup_script = "${file("${var.path}")}"
}
