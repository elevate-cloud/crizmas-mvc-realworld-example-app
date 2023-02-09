resource_group_name = "devopsapps-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "crizmaswebapp098"
always_on = true
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "enter acr password here"
           "DOCKER_REGISTRY_SERVER_URL"          = "leventprojectsacr.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "leventprojectsacr"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }
docker_image = "elevatecloudcrizmasmvcrealworldexampleappcd"
docker_image_tag = "latest" 

