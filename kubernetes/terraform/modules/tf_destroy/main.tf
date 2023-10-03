resource "null_resource" "local-exec-example" {
  provisioner "local-exec" {
    command = "at now + ${var.duration} ${var.units} -f ./destroy.sh"
  }
}