resource "azurerm_network_interface" "network_interface_card" {
 name                = var.nic_name
 location            = var.location
 resource_group_name = azurerm_resource_group.resource_group.name

 ip_configuration {
   name                          = var.ip_configuration_name
   subnet_id                     = azurerm_subnet.subnet.id
   private_ip_address_allocation = "Dynamic"
   public_ip_address_id          = azurerm_public_ip.public_ip.id
 }

 tags = var.tags
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
 network_interface_id      = azurerm_network_interface.network_interface_card.id
 network_security_group_id = azurerm_network_security_group.network_security_group.id
}

resource "random_id" "random_id" {
 keepers = {
   # Generate a new ID only when a new resource group is defined
   resource_group = azurerm_resource_group.resource_group.name
 }

 byte_length = 8
}

resource "azurerm_storage_account" "mystorageaccount" {
 name                     = "diag${random_id.random_id.hex}"
 resource_group_name      = azurerm_resource_group.resource_group.name
 location                 = var.location
 account_replication_type = var.account_replication_type
 account_tier             = var.account_tier

 tags = var.tags
}
