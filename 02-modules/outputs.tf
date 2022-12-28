output "kube_config" {
  value     = azurerm_kubernetes_cluster.example.kube_config_raw
  sensitive = true
}

output "namespace_id" {
  description = "Namespace ID"
  value       = module.basic_setup.namespace_id
}
