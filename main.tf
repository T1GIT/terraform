terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.20"
    }
  }
}

provider "kubernetes" {
  config_path    = var.kube_config_path
  config_context = var.kube_config_context
}

module "namespace" {
  source = "./modules/namespace"

  namespace_name = var.namespace_name
}

module "nginx" {
  source = "./modules/nginx"

  pod_name          = var.nginx.pod_name
  pod_labels        = var.nginx.pod_labels
  container_image   = var.nginx.container_image
  container_name    = var.nginx.container_name
  service_name      = var.nginx.service_name
  service_port      = var.nginx.service_port
  service_type      = var.nginx.service_type
  namespace         = module.namespace.namespace_name
}

module "redis" {
  source = "./modules/redis"

  pod_name          = var.redis.pod_name
  pod_labels        = var.redis.pod_labels
  container_image   = var.redis.container_image
  container_name    = var.redis.container_name
  service_name      = var.redis.service_name
  service_port      = var.redis.service_port
  service_type      = var.redis.service_type
  namespace         = module.namespace.namespace_name
}