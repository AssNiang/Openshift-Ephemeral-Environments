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
variable "test_workspace" {
  type = string
  default = "test"
}

variable "duration" {}
variable "units" {}
