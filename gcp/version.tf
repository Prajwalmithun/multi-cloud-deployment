terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.0.0"
    }
  }
}


# ---------------------------------------------------------------------------------------------------------------------
# PREPARE PROVIDERS
# ---------------------------------------------------------------------------------------------------------------------

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
}