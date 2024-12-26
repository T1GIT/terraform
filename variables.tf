variable "kube_config_path" {
  description = "Path to the Kubernetes configuration file"
  type        = string
}

variable "kube_config_context" {
  description = "Kubernetes context to use"
  type        = string
}

variable "namespace_name" {
  description = "Name for the Kubernetes namespace"
  type        = string
}

variable "nginx" {
    description = "Configuration for the Nginx pod and service"
    type = object({
        pod_name = string
        pod_labels = map(string)
        container_image = string
        container_name = string
        service_name = string
        service_port = number
        service_type = string
    })
}

variable "redis" {
    description = "Configuration for the Redis pod and service"
    type = object({
        pod_name = string
        pod_labels = map(string)
        container_image = string
        container_name = string
        service_name = string
        service_port = number
        service_type = string
    })
}


