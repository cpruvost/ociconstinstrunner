# Terraform Automation on Oracle Cloud : Create x GitHub SelfHosted Runner (for an Organisation) in Container Instances (public network)

This project has been designed to run with Oracle OCI Stacks Resource Manager. Nevertheless you can use it on another place but you have to uncomment some security variables needed outside of OCI Stacks Resource Manager. 

## Prerequisites

Before Starting you need to create a Github Token taht allow you to use GitHub SelfHosted Runner (please look at the doc on github). Then You can create the secret in OCI Vault.

1) You need to create a Github Token that allow you to use GitHub SelfHosted Runner (please look at the doc on github). Then You can create the secret in OCI Vault.

2) Create a Dynamic Group for Container Instance in your compratment
   
"Any {resource.type = 'computecontainerinstance', resource.compartment.id = 'ocid1.compartment.oc1..xxxxxxxxxxxxxxxxxxxxxxxcxfakuruoyv4dr4utq7q'}"

3) Create a Policy to allow Container Instance read Secret

allow dynamic-group <dynamic-group-name> to read secret-bundles in tenancy

## Create the Stack

This project consider that your network configuration is done. It means : 
- VCN is created with a private subnet and a public subnet
- The security list of the public subnet has an ingress rule for the container instances port (nothing needed there !)

You can look at the variables and see : 
- Some of the variables have default values than can be updated by yourself or not as Stack Ressource Manager Variables
- Some other variables have no default value and are mandatory so you must know them.
  - compartment_ocid
  - region
  - public_subnet_ocid
  - ci_image_url : we used [this docker image](https://hub.docker.com/r/myoung34/github-runner) that is really awsome. 
  - ci_github_secret : OCI secret ocid taht allows to get the GitHub Access Token
  - List of container env variables :
   
  variable "ci_container_env_variables" {
  description = "OCI Container Environment Variables"
  type        = map(string)
  default     = {
    RUNNER_SCOPE                 = null
    ORG_NAME                     = null
    ACCESS_TOKEN                 = null
  }
}

This stack was tested only with ORG_NAME="org" but you can update it to run with other contexts as the image used is not mine and allows you different options.
