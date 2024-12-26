variable "pod_name" {
  description = "Name for the Kubernetes pod"
  type        = string
}

variable "pod_labels" {
  description = "Labels for the Kubernetes pod"
  type        = map(string)
}

variable "container_image" {
  description = "Container image for the Kubernetes pod"
  type        = string
}

variable "container_name" {
  description = "Name for the container inside the Kubernetes pod"
  type        = string
}

variable "service_name" {
    description = "Name for the Kubernetes service"
    type        = string
}

variable "service_port" {
    description = "Port for the Kubernetes service"
    type        = number
}

variable "service_type" {
    description = "Type of Kubernetes service"
    type        = string
}

variable "namespace" {
    description = "Namespace for the pod and service"
    type        = string
}