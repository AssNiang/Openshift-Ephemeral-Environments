resource "kubernetes_resource_quota_v1" "example-rq" {
  metadata {
    name = var.rq_name
    namespace = var.ns_name
  }
  spec {
    hard = {
      pods = 10
      cpu = 5
      memory = "10Gi"
    }
    scope_selector {
      match_expression {
        operator = "In"
        scope_name = "PriorityClass"
        values = ["low"]
      }
    }
  }
}