// *** Resorce Group Values ***
resource_group_name = "ACR-RG"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Azure Container Registery (ACR) Values ***
  acr_name            = "leventprojectsacr"
  sku                 = "Standard"
  admin_enabled       = true
