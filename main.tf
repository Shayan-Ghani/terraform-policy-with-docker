
# Create a list of ports starting from 8080

resource "docker_container" "nginx" {
  image    = var.image_name
  for_each = { for idx, name in var.container_name : name => idx }  # map names to index
  name     = each.key
  
  ports {
    internal = "80"
    external = 8080 + each.value  # Dynamically calculate external port
  }

  volumes {
    container_path = "/var/lib/docker/volumes/"
    volume_name    = "vol1"
    host_path      = "/home/shayan/test/terraform/volumes"
  }
}