resource "kubernetes_namespace" "this" {
  metadata {
    name = var.namespace_name
  }
}