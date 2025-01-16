include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../environments/dev/keyvault"
}

inputs = {
  environment         = "dev"
  location            = "eastus"
  resource_group_name = "dev-rg"
  admin_object_id     = "YOUR_ADMIN_OBJECT_ID" # Zmień na rzeczywiste Object ID
  tags = {
    environment = "dev"
    owner       = "team"
  }
}