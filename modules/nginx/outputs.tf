output "pod_name" {
  description = "Name of the created pod"
  value       = kubernetes_pod.nginx.metadata[0].name
}

output "service_name" {
    description = "Name of the created service"
    value = kubernetes_service.nginx.metadata[0].name
}