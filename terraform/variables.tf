variable "render_api_key" {
  type      = string
  description = "API Key de Render (generada en Account Settings)"
  sensitive = true
}

variable "render_owner_id" {
  type      = string
  description = "ID del usuario o equipo en Render"
}

variable "repo_url" {
  type        = string
  description = "URL del repositorio de GitHub del monorepo"
  default     = "https://github.com/auribem84/teknowsolutions-customer-portal"
}

variable "db_password" {
  type      = string
  sensitive = true
  description = "Contraseña para el administrador de la base de datos"
}