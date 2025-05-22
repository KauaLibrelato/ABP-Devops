provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_service" "strapi" {
  name     = "strapi-cms"
  location = var.region

  template {
    spec {
      containers {
        image = var.image_url
        resources {
          limits = {
            memory = "512Mi"
            cpu    = "1"
          }
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "public_access" {
  location        = google_cloud_run_service.strapi.location
  project         = var.project_id
  service         = google_cloud_run_service.strapi.name
  role            = "roles/run.invoker"
  member          = "allUsers"
}
