provider "google" {
  credentials = "${file("packer-210513-d4cb1d5609a9.json")}"
  project     = "${var.project_name}"
  region      = "${var.region}"
}

module "vpc" {
  source = "../module/vpc_with_auto_subnetworks/"
  name   = "vps"
}

module "compute_private_ip" {
  source        = "../module/compute_private_ip/"
  instance_name = "powerdnsmaster"
  zone          = "europe-west1-b"
  instance_type = "${var.instance_type}"
  distr         = "${var.distr}"

  network = "${module.vpc.network}"

  tags = ["test"]

  email = "test-426@packer-210513.iam.gserviceaccount.com"

  #path = "../script/script.sh"
}
