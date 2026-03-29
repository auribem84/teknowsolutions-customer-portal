# No necesitas asignarles un 'default' aquí, 
# Terraform Cloud las llenará por ti al ejecutar el plan..

variable "render_api_key" {
  type      = string
  sensitive = true
  default   = "rnd_5pytohBuTRMIbxyKpTo9zcXK7M2R"
}

variable "render_owner_id" {
  type      = string
  default   = "usr-d6tjt6q4d50c73cc912g"
}

variable "repo_url" {
  type        = string
  default     = "https://github.com/auribem84/teknowsolutions-customer-portal"
}