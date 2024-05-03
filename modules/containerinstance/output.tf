output "private_ips" {
  value =  "${oci_container_instances_container_instance.this.*.vnics.0.private_ip}"
}

# output "public_ips" {
#   value =  "${oci_container_instances_container_instance.this.*.vnics.0.public_ip}"
# }

