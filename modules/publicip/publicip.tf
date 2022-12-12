resource "azurerm_public_ip" "test" {
  name                = "${var.vm_name}-${var.resource_type}"
  location            = var.location
  resource_group_name = var.resource_group
  allocation_method   = "Dynamic"
  sku                 = var.public_ip_sku

  tags = {
    Environment = var.isproduction == false ? "Development" : "Production"
  }
}
