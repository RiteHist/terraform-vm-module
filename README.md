# terraform-vm-module

A simple terraform module that creates the needed quantity of identical VMs on Yandex Cloud.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.instance](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_core_fraction"></a> [core\_fraction](#input\_core\_fraction) | The CPU core fraction. Info: https://yandex.cloud/ru/docs/compute/concepts/vm-platforms | `number` | n/a | yes |
| <a name="input_cores"></a> [cores](#input\_cores) | Number of CPU cores | `number` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | VM disk size | `number` | n/a | yes |
| <a name="input_disk_type"></a> [disk\_type](#input\_disk\_type) | The type of virtual disk | `string` | `"network-hdd"` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | VM hostname | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | yandex\_compute\_image ID | `string` | n/a | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | RAM | `number` | n/a | yes |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Map of metadata for VM | `map(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the VM | `string` | n/a | yes |
| <a name="input_nat"></a> [nat](#input\_nat) | VM public IP address | `bool` | `true` | no |
| <a name="input_platform_id"></a> [platform\_id](#input\_platform\_id) | Name of a platform to use for VM. Info: https://yandex.cloud/ru/docs/compute/concepts/vm-platforms | `string` | n/a | yes |
| <a name="input_preemptible"></a> [preemptible](#input\_preemptible) | Make VM preemptible | `bool` | `true` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | Number of VM replicas | `number` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | yandex\_vpc\_subnet ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm-info"></a> [vm-info](#output\_vm-info) | n/a |
| <a name="output_vm-network"></a> [vm-network](#output\_vm-network) | n/a |
<!-- END_TF_DOCS -->