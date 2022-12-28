resource "kubernetes_namespace" "example" {
  metadata {
    labels = {
      environment = var.environment
    }

    generate_name = "gl5-"
  }
}
