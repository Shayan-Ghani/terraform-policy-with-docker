data "docker_image" "nginx" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  image = "nginx:1"
  for_each = var.container_name
  name = each.key
  ports {
    internal = "80"
    external = "8080"
  }

  volumes {
    container_path = "/var/lib/docker/volumes/"
    volume_name    = "vol1"
    host_path = "/home/shayan/test/terraform/volumes"
  }
}
