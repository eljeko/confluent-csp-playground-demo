output "build" {
  /*value = {
    R_01_app_manager_kafka_cluster_key_KEY       = confluent_api_key.app_manager_kafka_cluster_key.id,
    R_01_app_manager_kafka_cluster_key_SECRET    = nonsensitive(confluent_api_key.app_manager_kafka_cluster_key.secret),

    R_02_sr_cluster_key_KEY                      = confluent_api_key.sr_cluster_key.id,
    R_02_sr_cluster_key_SECRET                   = nonsensitive(confluent_api_key.sr_cluster_key.secret),
    
    R_03_clients_kafka_cluster_key_KEY           = confluent_api_key.clients_kafka_cluster_key.id,
    R_03_clients_kafka_cluster_key_SECRET        = nonsensitive(confluent_api_key.clients_kafka_cluster_key.secret),
    
    R_04_____cluster_url                         = confluent_kafka_cluster.acme_cluster.bootstrap_endpoint
  }*/

  value = <<-EOT

  ########################################
  #   EC2 acme-host                      #
  ########################################

  Connect to EC2 instance with: 
  
  ssh -i acmehost.pem ubuntu@${aws_instance.acme-host.public_ip}

  EOT

}