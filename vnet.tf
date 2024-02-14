*/
module "vnet" {
  source  = "git@github.com:dopracticeonly/terraform-azurerm-vnet.git"
  version = "2.3.0"

 
  resource_group_name            = "rg-shared-westeurope-02"
  vnetwork_name                  = "vnet-shared-hub-westeurope-002"
  location                       = "westeurope"
  vnet_address_space             = ["10.1.0.0/16"]
  firewall_subnet_address_prefix = ["10.1.0.0/26"]
  gateway_subnet_address_prefix  = ["10.1.1.0/27"]
  create_network_watcher         = false

  # Adding Standard DDoS Plan, and custom DNS servers (Optional)
  create_ddos_plan = false
}

/*