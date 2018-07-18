variable "project_name" {
  // must be change !!
  description = "project name"
  default     = "packer-210513"
}

//Location variables
variable "region" {
  default = "europe-west1"
}

//Unique variables
variable "instance_type" {
  description = "instance machine type"
  default     = "n1-standard-1"
}

variable "distr" {
  description = "instance distribution image"
  default     = "ubuntu-1604-lts"
}
