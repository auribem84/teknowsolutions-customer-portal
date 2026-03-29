terraform {
  required_version = ">= 1.3.0"

  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 0.6.0"
    }
  }
}