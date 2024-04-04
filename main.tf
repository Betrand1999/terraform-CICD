resource "google_compute_instance" "acoout_instance" {
  name                      = "betrand-instance"
  machine_type              = var.machine_type
  zone                      = "us-east1-b"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
