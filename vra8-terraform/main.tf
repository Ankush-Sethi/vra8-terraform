provider "kubernetes" {
  config_path = "config"
}


resource "kubernetes_namespace" "example" {
  metadata {
    annotations = {
      name = "namespace-created-by-vra8-terraform"
    }

    labels = {
      mylabel = "label-value"
    }

    name = "namespace-created-by-vra8-terraform"
  }
}
