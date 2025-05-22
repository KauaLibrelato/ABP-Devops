variable "project_id" {
  description = "ID do projeto no GCP"
  type        = string
}

variable "region" {
  description = "Região para o serviço Cloud Run"
  type        = string
  default     = "us-central1"
}

variable "image_url" {
  description = "URL da imagem Docker no Container Registry ou Artifact Registry"
  type        = string
}
