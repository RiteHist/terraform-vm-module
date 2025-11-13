terraform {
    required_providers {
      yandex = {
        source = "yandex-cloud/yandex"
      }
    }
    required_version = "~>1.9.1"
}

resource "yandex_compute_instance" "instance" {
    count = var.replicas
    name = "${var.name}-${count.index + 1}"
    hostname = "${var.name}-${count.index + 1}"
    platform_id = var.platform_id
    resources {
        cores = var.cores
        memory = var.memory
        core_fraction = var.core_fraction
    }
    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = var.disk_size
            type = var.disk_type
        }
    }
    network_interface {
        subnet_id = var.subnet_id
        nat = var.nat
    }
    scheduling_policy {
        preemptible = var.preemptible
    }
    metadata = var.metadata
}