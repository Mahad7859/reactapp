variable "region" {
  type        = string
  default     = "us-central1"
  description = "GCP region"
}
variable "google_credentials" {
  description = "Google Cloud service account credentials"
  type        = string
  sensitive   = true
}

variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}
variable "google_credentials" {
  type        = string
  description = "Path to Google Cloud credentials JSON"
}
