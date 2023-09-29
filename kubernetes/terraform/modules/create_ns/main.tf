resource "kubernetes_namespace" "example-ns" {
  metadata {
    name = var.ns_name
  }
}