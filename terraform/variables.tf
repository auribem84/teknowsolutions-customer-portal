variable "render_api_key" {
  description = "Render API key. Set via TF_VAR_render_api_key or RENDER_API_KEY env var."
  type        = string
  sensitive   = true
}

variable "render_owner_id" {
  description = "Render owner/team ID (starts with usr_ or tea_). Found in Account Settings."
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name for the PostgreSQL instance shown in the Render dashboard."
  type        = string
  default     = "my-postgres-db"
}

variable "db_database_name" {
  description = "Name of the actual database created inside the instance."
  type        = string
  default     = "mydb"
}

variable "db_user" {
  description = "Database user that will be created."
  type        = string
  default     = "mydb_admin"
}

variable "region" {
  description = "Render region. Options: oregon, ohio, virginia, frankfurt, singapore."
  type        = string
  default     = "oregon"
}

variable "db_plan" {
  description = "Postgres plan. Options: free, basic_256mb, basic_1gb, pro_4gb, etc."
  type        = string
  default     = "free"
}

variable "postgres_version" {
  description = "PostgreSQL major version."
  type        = string
  default     = "16"
}