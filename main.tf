terraform {
  backend "remote" {
    organization = "ASLII"  # <-- Replace with your actual Terraform Cloud org

    workspaces {
      name = "reactapp"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0"
    }
  }
}
provider "google" {
  credentials = var.google_credentials
  project     = devops-test-465307 
  region      = var.region
}
