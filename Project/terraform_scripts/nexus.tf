resource "kubernetes_namespace" "nexus" {
  metadata {
    name = "nexus"
  }
}

resource "kubernetes_deployment" "nexus" {
  metadata {
    name      = "nexus"
    namespace = kubernetes_namespace.nexus.metadata[0].name
    labels = {
      app = "nexus"
    }
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "nexus"
      }
    }
    template {
      metadata {
        labels = {
          app = "nexus"
        }
      }
      spec {
        containers {
          name  = "nexus"
          image = "sonatype/nexus3:latest"
          ports {
            container_port = 8081
          }
          resources {
            limits = {
              memory = "2Gi"
            }
            requests = {
              memory = "1Gi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "nexus" {
  metadata {
    name      = "nexus-service"
    namespace = kubernetes_namespace.nexus.metadata[0].name
  }
  spec {
    selector = {
      app = kubernetes_deployment.nexus.metadata[0].labels["app"]
    }
    type = "NodePort"
    port {
      port        = 8081
      target_port = 8081
      node_port   = 32000
    }
  }
}
