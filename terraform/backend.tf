terraform {
  cloud {
    organization = "auribem84_org" # Reemplaza con tu organización real en TF Cloud

    workspaces {
      name = "app-car"  # Reemplaza con el nombre de tu workspace
    }
  }
}