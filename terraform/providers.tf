terraform {
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "0.6.0" # Revisa la versión más reciente
    }
  }
}

provider "render" {
  api_key  = var.RENDER_API_KEY
  owner_id = var.RENDER_OWNER_ID
}