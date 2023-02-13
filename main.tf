#Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


#Ubuntu server 
module "linux_virtual_machine" {
  source                          = "./modules/virtual_machine"
  instances_count                 = var.instances_count
  resource_group_name             = var.resource_group_name
  location                        = var.location
  virtual_machine_name            = var.virtual_machine_name
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  os_flavor                       = var.os_flavor
  disable_password_authentication = var.disable_password_authentication
  linux_distribution_name         = var.linux_distribution_name
  enable_public_ip_address        = var.enable_public_ip_address
  virtual_machine_size            = var.virtual_machine_size
  generate_admin_ssh_key          = var.generate_admin_ssh_key
  subnet_name                     = var.subnet_name
  address_prefixes                = var.address_prefixes
  vnet_name                       = var.vnet_name
  tags                            = local.default_tags
  address_space                   = var.address_space
  depends_on = [
    azurerm_resource_group.rg
  ]
}
