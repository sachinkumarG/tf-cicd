provider "azurerm" {
    version         =   "~> 2.0"
    alias           = "other_sub"
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
    
    features {}
}
provider "azurerm" {
  version  = "~>2.0.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "test-mgmt-rg"
  location = "Southeast Asia"
}
