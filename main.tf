resource "helm_release" "this" {
  count            = var.create_network_client ? 1 : 0
  name             = var.chart
  chart            = var.chart
  repository       = var.chart_repository
  version          = var.chart_version
  namespace        = var.chart_namespace

  dynamic "set" {
    for_each = var.token != null ? ["token"] : []
    content {
      name  = "spotinst.token"
      value = var.token
    }
  }

  dynamic "set" {
    for_each = var.account_id != null ? ["account_id"] : []
    content {
      name  = "spotinst.account"
      value = var.account_id
    }
  }

  dynamic "set" {
    for_each = var.cluster_identifier != null ? ["cluster_identifier"] : []
    content {
      name  = "spotinst.clusterIdentifier"
      value = var.cluster_identifier
    }
  }

  dynamic "set" {
    for_each = var.namespace != null ? ["namespace"] : []
    content {
      name  = "namespace"
      value = var.namespace
    }
  }

  dynamic "set" {
    for_each = var.secret_name != null ? ["secret_name"] : []
    content {
      name  = "secretName"
      value = var.secret_name
    }
  }

  dynamic "set" {
    for_each = var.config_map_name != null ? ["config_map_name"] : []
    content {
      name  = "configMapName"
      value = var.config_map_name
    }
  }

  dynamic "set" {
    for_each = var.image_repository != null ? ["image_repository"] : []
    content {
      name  = "image.repository"
      value = var.image_repository
    }
  }

  dynamic "set" {
    for_each = var.image_tag != null ? ["image_tag"] : []
    content {
      name  = "image.tag"
      value = var.image_tag
    }
  }

  dynamic "set" {
    for_each = var.image_pull_policy != null ? ["image_pull_policy"] : []
    content {
      name  = "image.pullPolicy"
      value = var.image_pull_policy
    }
  }

  dynamic "set" {
    for_each = var.image_pull_secrets != null ? ["image_pull_secrets"] : []
    content {
      name  = "image.pullSecrets"
      value = var.image_pull_secrets
    }
  }
}
