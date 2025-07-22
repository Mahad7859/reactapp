terraform {
  backend "remote" {
    organization = "ASLII"  # Replace with your Terraform Cloud org

    workspaces {
      name = "reactapp"
    }
  }
}
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "ASLII"              # ✅ Your Terraform Cloud Org
    workspaces {
      name = "reactapp"                 # ✅ Your Workspace Name
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "static_bucket" {
  name     = "${var.project_id}-static-site-bucket"
  location = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}

