terraform {
  required_version = ">= 1.3.0"

  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 0.6.0"
    }
  }
}

provider "render" {
  api_key  = var.RENDER_API_KEY
  owner_id = var.RENDER_OWNER_ID
}

variable "RENDER_API_KEY" {
  description = "Render API key"
  type        = string
  sensitive   = true
}

variable "RENDER_OWNER_ID" {
  description = "Render owner/team ID"
  type        = string
}

variable "repo_url" {
  description = "Git repository URL for the backend service"
  type        = string
}