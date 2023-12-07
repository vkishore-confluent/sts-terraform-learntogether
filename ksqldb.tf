resource "confluent_ksql_cluster" "ksql_cluster_1" {
  display_name = "ksql_cluster_1"
  csu          = 4
  kafka_cluster {
    id = confluent_kafka_cluster.basic.id
  }
  credential_identity {
    id = confluent_service_account.tf_cluster_admin.id
  }
  environment {
    id = "env-97ryr0" #change to confluent_environment.staging.id
  }
  lifecycle {
    prevent_destroy = false
  }
}