provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
  credentials = file("[CAMINHO LOCAL DO ARQUIVO DE CREDENCIAL]")
}