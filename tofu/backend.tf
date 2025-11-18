terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iris"
    storage_account_name = "stiristofu"
    container_name       = "portfolio-tfstate"
    key                  = "terraform.tfstate"
  }
}