resource_group_name = "project-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "example-webapp"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = ""
           "DOCKER_REGISTRY_SERVER_URL"          = ""
           "DOCKER_REGISTRY_SERVER_USERNAME"     = ""
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = ""
    }


