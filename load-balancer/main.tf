// modules/load-balancer/main.tf
resource "google_compute_global_forwarding_rule" "default" {
  name       = var.name
  target     = google_compute_target_http_proxy.default.self_link
  port_range = "80"
}

resource "google_compute_target_http_proxy" "default" {
  name   = var.name
  url_map = google_compute_url_map.default.self_link
}

resource "google_compute_url_map" "default" {
  name = var.name

  default_service = google_compute_backend_service.default.self_link
}

resource "google_compute_backend_service" "default" {
  name                  = var.name
  load_balancing_scheme = "EXTERNAL"

  backend {
    group = google_compute_instance_group.default.self_link
  }

  health_checks = [google_compute_health_check.default.self_link]
}

resource "google_compute_health_check" "default" {
  name = var.name

  http_health_check {
    request_path = "/"
    port         = 80
  }
}

resource "google_compute_instance_group" "default" {
  name        = var.name
  zone        = var.zone
  instances   = var.instances
  named_port {
    name = "http"
    port = 80
  }
}
