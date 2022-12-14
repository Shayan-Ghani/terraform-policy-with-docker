variable "image_name" {
  type    = string
  default = "nginx:latest"
}

variable "container_name" {
  default = {
    "nginx02" : "nginx2"
    "nginx03" : "nginx3"
    "nginx04" : "nginx4"
    "nginx05" : "nginx5"
  }
}

