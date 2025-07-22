resource "google_storage_bucket" "frontend_bucket" {
  name     = "cra-frontend-bucket-unique123"  # Must be globally unique
  location = "US"
}
