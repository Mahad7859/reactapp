terraform {
  backend "remote" {
    organization = "ASLII"  # Replace with your Terraform Cloud org

    workspaces {
      name = "reactapp"
    }
  }
}
