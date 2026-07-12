locals {
  project  = "demoproject"
  location = "westeurope"

  tags = {
    project    = local.project
    managed_by = "terraform"
  }
}
resource "azurerm_resource_group" "this" {
  name     = "rg-${local.project}"
  location = local.location
  tags     = local.tags
}

module "network" {
  source = "./modules/network"

  project             = local.project
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
}

output "resource_group" {
  value = azurerm_resource_group.this.name

}