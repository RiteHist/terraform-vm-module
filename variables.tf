variable "name" {
    type = string
    description = "Name of the VM"
}

variable "hostname" {
    type = string
    description = "VM hostname"
}

variable "platform_id" {
    type = string
    description = "Name of a platform to use for VM. Info: https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}

variable "cores" {
    type = number
    description = "Number of CPU cores"
}

variable "memory" {
    type = number
    description = "RAM"
}

variable "core_fraction" {
    type = number
    description = "The CPU core fraction. Info: https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}

variable "image_id" {
    type = string
    description = "yandex_compute_image ID"
}

variable "disk_size" {
    type = number
    description = "VM disk size"
}

variable "disk_type" {
    type = string
    description = "The type of virtual disk"
    default = "network-hdd"
}

variable "nat" {
    type = bool
    description = "VM public IP address"
    default = true
}

variable "subnet_id" {
    type = string
    description = "yandex_vpc_subnet ID"
}

variable "preemptible" {
    type = bool
    description = "Make VM preemptible"
    default = true
}

variable "metadata" {
    type = map(string)
    description = "Map of metadata for VM"
}

variable "replicas" {
    type = number
    description = "Number of VM replicas"
}

