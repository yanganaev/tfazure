#output "client_certificate" {
#  value = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
#}

output "db_fqdn" {
  value = azurerm_mariadb_server.dbsrv.fqdn
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}

output "acr_username" {
  value     = azurerm_container_registry.acr.admin_username
  sensitive = true
}

output "acr_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
}

output "client_key" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.client_key
}

output "cluster_ca_certificate" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate
}

output "cluster_username" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.username
}

output "cluster_password" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.password
}

output "host" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.host
}