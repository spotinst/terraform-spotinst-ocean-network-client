variable "create_network_client" {
  type        = bool
  description = "Controls whether the Spot Ocean Network Client should be created."
  default     = true
}

variable "create_namespace" {
  type        = bool
  description = "Controls whether the namespace should be created if it does not yet exist."
  default     = true
}

variable "chart_version" {
  type        = string
  description = "Chart version to be deployed."
  default     = "1.1.0"
}

variable "chart_repository" {
  type        = string
  description = "Repository URL where to locate the Spot Ocean Network Client chart."
  default     = "https://charts.spot.io"
}

variable "chart" {
  type        = string
  description = "Chart name to be deployed."
  default     = "ocean-network-client"
}

variable "chart_namespace" {
  type        = string
  description = "Chart namespace to install the release into."
  default     = "kube-system"
}

variable "secret_name" {
  type        = string
  description = "Secret name."
  default     = null
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace where the components should be installed."
  default     = null
}

variable "config_map_name" {
  type        = string
  description = "ConfigMap name."
  default     = null
}

variable "image_repository" {
  type        = string
  description = "Image repository."
  default     = null
}

variable "image_tag" {
  type        = string
  description = "Image tag."
  default     = null
}

variable "image_pull_policy" {
  type        = string
  description = "Image pull policy."
  default     = "Always"
}

variable "image_pull_secrets" {
  type        = string
  description = "Image pull secrets."
  default     = null
}
