output "cloud_run_url" {
  description = "URL do serviço Cloud Run"
  value       = google_cloud_run_service.strapi.status[0].url
}
