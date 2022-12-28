data "terraform_remote_state" "aks" {
  backend = "azurerm"

  config = {
    resource_group_name  = "1-fc0acb22-playground-sandbox"
    container_name       = "backend"
    storage_account_name = "gltfbackend"
    key                  = "first-stack.json"
  }
}



resource "kubernetes_namespace" "example" {
  metadata {
    labels = {
      environment = var.environment
    }

    generate_name = "gl5-"
  }
}


resource "helm_release" "argo" {
  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = kubernetes_namespace.example.id
}
