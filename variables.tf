variable "image_name" {
  type    = string
  default = "nginx:latest"
}

variable "container_name" {
  type = list(string)
  default = [
    "nginx02",
    "nginx03",
    "nginx04",
    "nginx05"
  ]

}

