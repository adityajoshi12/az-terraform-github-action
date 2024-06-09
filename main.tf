terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "LIVESTREAM"
    storage_account_name = "d10178a"
    container_name       = "tfstate"                # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

module "vm" {
  source = "./modules/vm"
  overall = {
    region = "west us"
    name   = "test"
    size   = "Standard_DS1_v2"
    os_details = {
      publisher = "Canonical" 
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "Latest"
    }
    password = "Pass!word@"
    username = "azureadmin"
    env = "dev"
    count = 1
    os_type = "linux"  # windows
  }
  
}
