provider "google" {
  credentials = file("")
  project     = "My First Project"
  region      = "us-west1"
}

resource "google_compute_instance" "justine-terraform-first-instance" {
  name         = "justine-terraform-first-instance"
  machine_type = "f1-micro"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        env = "justine-terraform"
      }
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
   
    metadata = {
        foo = "bar"
    }
}