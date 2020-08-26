module "network" {
  source  = "app.terraform.io/davidlauridsen-training/network/azurerm"
  resource_group_name = azurerm_resource_group.test.name
  version = "3.0.1"
  location = "West Europe"
  address_space       = "10.0.0.0/16"
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]
  tags = {
    environment = "dev"
    costcenter  = "it"
  }
}

resource "azurerm_resource_group" "test" {
  name     = "my-resources"
  location = "West Europe"
}
