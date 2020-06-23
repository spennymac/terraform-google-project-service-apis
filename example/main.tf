provider "google" {}

module "api-services" {
  source = "../"
  project_id = var.project_id
  services = {
    "servicenetworking.googleapis.com" = {
      disable_dependent_services = false,
      disable_on_destroy = false
    },
    "vpcaccess.googleapis.com" = {
      disable_dependent_services = false,
      disable_on_destroy = false
    },
    "servicenetworking.googleapis.com"= {
      disable_dependent_services = false,
      disable_on_destroy = false
    },
    "service.googleapis.com"= {
      disable_dependent_services = false,
      disable_on_destroy = false
    },
  }
}