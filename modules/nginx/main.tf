resource "kubernetes_pod" "nginx" {
  metadata {
    name      = var.pod_name
    labels    = var.pod_labels
    namespace = var.namespace
  }

  spec {
    container {
      image = var.container_image
      name  = var.container_name
    }
  }
}


resource "kubernetes_service" "nginx" {
  metadata {
    name      = var.service_name
    namespace = var.namespace
  }
  spec {
    selector = {
      app = kubernetes_pod.nginx.metadata.0.labels.app
    }
    port {
      port = var.service_port
    }
    type = var.service_type
  }

  depends_on = [
    kubernetes_pod.nginx
  ]
}