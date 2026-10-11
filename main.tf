data "ovh_cloud_key_manager_containers" "cloud_key_manager_containers_lookup" {
  for_each = var.cloud_key_manager_containers_lookup

  service_name = each.value.service_name
}

