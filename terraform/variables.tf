variable "client_id" {}  

variable "client_secret" {}

variable "azure_region" {
  default = "eastus"
}

variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "flxiangdiploma"
}

variable "agent_count" {
    default = 2
}

variable "DB_PASSWORD" {
  description = "Password for MariaDB admin (get from environment)"
  type        = string
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
  default = "aks01"
}

variable "cluster_name" {
  default = "aks01"
}

variable "log_analytics_workspace_name" {
  default = "DefaultLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable "log_analytics_workspace_location" {
  default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing
variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}
