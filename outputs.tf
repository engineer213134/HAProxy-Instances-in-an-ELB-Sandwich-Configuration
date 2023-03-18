#File for the outputs of the infstructre defined in main.tf root dir

output "public_ips" {
  value = module.example_instances.*.public_ip
}