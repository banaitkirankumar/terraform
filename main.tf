data "ibm_container_cluster_config" "single-zone-rt-k8s" {
  org_guid        = var.org_guid
  space_guid      = var.space_guid
  account_guid    = var.account_guid
  cluster_name_id = var.cluster
  config_dir      = "/Users/KK/Desktop"
}

resource "ibm_container_worker_pool" "edge_workerpool" {
  worker_pool_name = "worker_pool_edge"
  machine_type     = "u2c.2x4"
  cluster          = data.ibm_container_cluster_config.single-zone-rt-k8s.id
  size_per_zone    = 2
  hardware         = "shared"
  disk_encryption  = "true"

  labels = {
    "test" = "test-pool1"
  }

  timeouts {
    update = "180m"
  }
}
