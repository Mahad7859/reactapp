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
  credentials = jsondecode(var.google_credentials)
  project     = "your-gcp-project-id"     # Replace this
  region      = "us-central1"             # Replace as needed
}

variable "google_credentials" {
  description = "GCP credentials"
  type        = string
  sensitive   = true
}

provider "google" {
  credentials = jsondecode(var.google_credentials)
  project     = var.project_id
  region      = "us-central1" # or your region
}
