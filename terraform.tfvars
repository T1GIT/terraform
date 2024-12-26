# Kubernetes Configuration
kube_config_path    = "~/.kube/config"
kube_config_context = "minikube"

# Namespace Configuration
namespace_name = "terraform-example-ns"

# Pod Configuration

# Nginx Configuration
nginx = {
  pod_name          = "nginx-pod"
  pod_labels        = {
    app = "nginx"
  }
  container_image   = "nginx:1.23.2"
  container_name    = "nginx-container"
  service_name      = "nginx-service"
  service_port      = 80
  service_type      = "NodePort"
}

# Redis Configuration
redis = {
  pod_name          = "redis-pod"
  pod_labels        = {
    app = "redis"
  }
  container_image   = "redis:7.0.12"
  container_name    = "redis-container"
  service_name      = "redis-service"
  service_port      = 6379
  service_type      = "ClusterIP"
}
