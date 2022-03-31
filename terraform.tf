terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {
host = "npipe:////.//pipe//docker_engine"
}

resource "docker_container" "terraform" {
  name  = "Web"
  image = "terraform"
  ports {
    internal = 9000
    external = 9000
  }
}
