terraform {
  required_providers {
    oci = {
      version = "~> 5.39.0"
      #version = "~> 4.112.0"
    }
  }

  #OCI Terraform Stack does not support last version
  required_version = "~> 1.7.3"
  #required_version = "~> 1.2.9"
}

module "containerinstance" {
  source  = "./modules/containerinstance"

  compartment_ocid  = var.compartment_ocid
  public_subnet_ocid = var.public_subnet_ocid
  ci_name = var.ci_name
  ci_restart_policy = var.ci_restart_policy
  ci_state = var.ci_state
  ci_shape = var.ci_shape
  ci_ocpus = var.ci_ocpus
  ci_memory = var.ci_memory
  ci_container_name = var.ci_container_name
  ci_image_url = var.ci_image_url
  ci_github_secret = var.ci_github_secret
  ci_count = var.ci_count
  is_public_ip_assigned = var.is_public_ip_assigned
  ci_container_env_variables = var.ci_container_env_variables
}
