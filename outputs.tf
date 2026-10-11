output "cloud_key_manager_containers_lookup_containers" {
  description = "Map of containers values across all cloud_key_manager_containers_lookup, keyed the same as var.cloud_key_manager_containers_lookup except keys with no containers are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_containers.cloud_key_manager_containers_lookup : k => v.containers if v.containers != null && length(v.containers) > 0 }
}
output "cloud_key_manager_containers_lookup_service_name" {
  description = "Map of service_name values across all cloud_key_manager_containers_lookup, keyed the same as var.cloud_key_manager_containers_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_containers.cloud_key_manager_containers_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

