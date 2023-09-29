resource "kubernetes_role_v1" "example-role" {
  metadata {
    name = var.role_name
    namespace = var.ns_name
    labels = {
      test = "pod-reader-role"
    }
  }

  rule {
    api_groups     = [""]
    resources      = ["pods"]
    verbs          = ["get", "list", "watch"]
  }
  rule {
    api_groups = ["apps"]
    resources  = ["deployments"]
    verbs      = ["get", "list"]
  }
}

resource "kubernetes_role_binding_v1" "example-rb" {
  metadata {
    name      = var.rb_name
    namespace = var.ns_name
    labels = {
      test = "read-pods-rb"
    }
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "Role"
    name      = var.role_name
  }
  subject {
    kind      = "User"
    name      = "admin"
    api_group = "rbac.authorization.k8s.io"
  }
  subject {
    kind      = "User"
    name      = "developer"
    api_group = "rbac.authorization.k8s.io"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "default"
    namespace = "kube-system"
  }
  subject {
    kind      = "Group"
    name      = "system:masters"
    api_group = "rbac.authorization.k8s.io"
  }
}