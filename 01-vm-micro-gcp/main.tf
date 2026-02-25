resource "google_compute_network" "vpc_rede_estudo" {
  name                    = "rede-estudos"
  auto_create_subnetworks = true
}

resource "google_compute_instance" "vm_teste" {
  name         = "vm-hostname-x"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_rede_estudo.name
    
    access_config {
      
    }
  }
}