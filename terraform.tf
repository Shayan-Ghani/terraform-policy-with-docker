terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

terraform {
  backend "s3" {
    bucket  = "tfbackend"
    encrypt = true
    key     = "docker/terraform.tfstate"
    region = "us-east-1"
  }
}