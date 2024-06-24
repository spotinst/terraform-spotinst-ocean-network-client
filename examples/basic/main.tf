provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "ocean-network-client" {
  source            = "../.."
  image_pull_policy = "Always"
  image_tag         = "1.0.8"
}

