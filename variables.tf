### Start : These information are needed only outside of OCI Terraform Stack Manager
# variable "tenancy_ocid" {
#     description = "The OCI Tenancy ocid"
#     type        = string
# }

# variable "user_ocid" {
#     description = "The OCI User ocid"
#     type        = string
# }

# variable "fingerprint" {
#     description = "The Fingerprint of the OCI API Key"
#     type        = string
# }

# variable "private_key_path" {
#     description = "The Path of the OCI API Key"
#     type        = string
# }
### End : These information are needed only outside of OCI Terraform Stack Manager

variable "region" {
    description = "The OCI region"
    type        = string
}

variable "compartment_ocid" {
    description = "The OCI Compartment ocid"
    type        = string
}

# variable "private_subnet_ocid" {
#     description = "The OCI Private Subnet ocid"
#     type        = string
# }

variable "public_subnet_ocid" {
    description = "The OCI Public Subnet ocid"
    type        = string
}

# Use data to get ADs is better.
# variable "availability_domain" {
#     description = "The OCI Availability Domain"
#     type        = string
# }

variable "ci_name" {
    description = "The OCI Container Instance Name"
    type        = string
    default     = "CI_GITHUB_RUNNER"
}

variable "ci_restart_policy" {
    description = "The OCI Container Instance Retsrat Policy"
    type        = string
    default     = "ALWAYS"
}

variable "ci_state" {
    description = "The OCI Container Instance State"
    type        = string
    default     = "ACTIVE"
}

variable "ci_shape" {
    description = "The OCI Container Instance Shape"
    type        = string
    default     = "CI.Standard.E4.Flex"
}

variable "ci_ocpus" {
    description = "The OCI Container Instance Ocpu Number"
    type        = number
    default     = 1
}

variable "ci_memory" {
    description = "The OCI Container Instance Memory GB Number"
    type        = number
    default     = 1
}

variable "ci_container_name" {
    description = "The OCI Container Name"
    type        = string
    default     = "CI_RUNNER_CONTAINER"
}

variable "ci_image_url" {
    description = "The OCI Container Image Url"
    type        = string
}

variable "ci_github_secret" {
    description = "The OCI Vault Secret Id for the github token"
    type        = string
}

variable "ci_container_env_variables" {
  description = "OCI Container Environment Variables"
  type        = map(string)
  default     = {
    RUNNER_SCOPE                 = null
    ORG_NAME                     = null
    ACCESS_TOKEN                 = null
  }
}

variable "ci_count" {
    description = "The OCI Container Instance Count Number"
    type        = number
}

variable "is_public_ip_assigned" {
    description = "Does the CI has a public ip ?"
    type        = bool
    default     = true
}

