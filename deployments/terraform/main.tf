# NexusGate: Cluster Provisioning
resource "google_container_cluster" "primary" {
  name     = "nexusgate-cluster"
  location = "us-central1"

  # Enabling Agones requires a standard node pool
  initial_node_count = 3

  node_config {
    machine_type = "e2-standard-4" # Balanced for UE5 binaries
  }
}
