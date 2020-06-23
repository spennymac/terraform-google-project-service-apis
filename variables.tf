variable "project_id" {
  description = "The GCP project you want to enable APIs"
}

variable "services" {
  type = map(object({
    disable_on_destroy = bool
    disable_dependent_services = bool
  }))
}