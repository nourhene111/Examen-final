terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  # Configuration options
}

resource "docker_image" "salutation" {
  name         = "nourhene0/salutation:latest"
  keep_locally = false
}

resource "docker_container" "salutation" {
  image = docker_image.salutation.name  # Use 'name' attribute, not '.latest'
  name  = "cv_dhouha"
  
  dynamic "ports" {
    for_each = [1, 2]  # Adjust based on the number of ports you want
    content {
      internal = 80
      external = 8080 + ports.key - 1
    }
  }
}