terraform {
  backend "gcs" {
    bucket = "[NOME DO BUCKET]"
    prefix = "infrascode/state"
    credentials = "[CAMINHO LOCAL DO ARQUIVO DE CREDENCIAL]"
  }
}