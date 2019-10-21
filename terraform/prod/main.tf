terraform {
  # Версия terraform
  required_version = "0.12.9"
}

provider "google" {
  # Версия провайдера
  version = "2.15.0"
  # ID проекта
  project = var.project
  # project = "infra-253818"

  #region = "europe-west-1"
  region      = var.region
  credentials = "/root/.config/gcloud/legacy_credentials/vy.mishukov@gmail.com/adc.json"
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
}
module "vpc" {
  source          = "../modules/vpc"
  source_ranges = ["109.252.70.61/32"]
}
