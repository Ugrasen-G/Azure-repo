rgs = {
  rg2 = {
    name       = "kp2"
    location   = "eastasia"
    managed_by = "terraform"
    tags = {
      environment = "pro"
    }
  }
}

stg = {
  storage1 = {
    name                     = "krishn2026"
    resource_group_name      = "kp2"
    location                 = "eastasia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    container_access_type    = "private"
    container_name           = "container1"
  }
}

vnet = {
  vnet2 = {
    name                = "vnet1234"
    location            = "Eastasia"
    resource_group_name = "kp2"
    address_space       = ["10.1.0.0/16"]
  }
}
subnet = {
  sub1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "kp2"
    virtual_network_name = "vnet1234"
    address_prefixes     = ["10.1.1.0/24"]
  }

  sub2 = {
    name                 = "Backend-subnet"
    resource_group_name  = "kp2"
    virtual_network_name = "vnet1234"
    address_prefixes     = ["10.1.2.0/24"]
  }
  sub3 = {
    name                 = "appgwsubnet"
    resource_group_name  = "kp2"
    virtual_network_name = "vnet1234"
    address_prefixes     = ["10.1.3.0/24"]
  }
  sub4 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "kp2"
    virtual_network_name = "vnet1234"
    address_prefixes     = ["10.1.4.0/24"]
  }
}
