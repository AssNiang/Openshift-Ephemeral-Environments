variable "host" {
    type = string
    default = "https://api.crc.testing:6443"
}
variable "config_path" {
    type = string
    default = "~/.kube/config"
}
variable "config_context" {
  type = string
  default = "crc-admin"
}

variable "duration" {}
variable "units" {}