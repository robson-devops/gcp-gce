data "template_file" "script" {
  template = file("${path.module}/setup.sh")
  vars = {
    foo = "bar"
  }
}

resource "google_compute_instance" "gce" {
  name                      = var.nome
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = true

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

  metadata_startup_script = data.template_file.script.rendered

}