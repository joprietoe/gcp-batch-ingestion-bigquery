terraform {
  backend "gcs" {
    bucket = "tf-mvp-shopping-gcp-batch-ingestion"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "mvp-shopping"
  region = "us-central1"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "mvp-shopping-batch-pipeline"
  #storage_class = "REGIONAL"
  location  = "us-central1"
}
