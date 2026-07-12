output "vnet_id" {
  description = "ID of the vritual network"
  value       = azurerm_virtual_network.this.id
}
output "aks_subnet" {
  description = "Subnet created for AKS purpose"
  value       = azurerm_subnet.aks.id
}