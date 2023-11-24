output "IP_INTANCE" {
  value = google_compute_instance.monitoring.network_interface.0.network_ip
}