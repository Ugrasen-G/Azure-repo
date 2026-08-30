module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

# module "azurerm_storage_account" {
#   depends_on = [module.azurerm_resource_group]
#   source     = "../../modules/azurerm_storage_account"
#   stg        = var.stg
# }

module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_virtual_network"
  vnet       = var.vnet
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnet     = var.subnet
}

module "azurerm_network_security_group" {
  depends_on     = [module.azurerm_virtual_network]
  source         = "../../modules/azurerm_network_security_group"
  security_group = var.security_group
}