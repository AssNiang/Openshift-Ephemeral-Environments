resource "kubernetes_limit_range_v1" "example-lr" {
  metadata {
    name = var.lr_name
    namespace = var.ns_name
  }
  spec {
    # type - (Optional) Type of resource that this limit applies to. 
    # e.g. Pod, Container or PersistentVolumeClaim
    limit {
      type = "Pod"
      max = {
        cpu    = "200m"
        memory = "1024Mi"
      }
    }
    limit {
      type = "PersistentVolumeClaim"
      min = {
        storage = "24M"
      }
    }
    limit {
      type = "Container"
      default = {
        cpu    = "50m"
        memory = "24Mi"
      }
    }
  }
}