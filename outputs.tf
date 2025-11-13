output "vm-info" {
    value = [
        for instance in yandex_compute_instance.instance : {
            name = instance.name
            id = instance.id
            platform_id = instance.platform_id 
            status = instance.status
        }
    ]
}

output "vm-network" {
    value = [
        for instance in yandex_compute_instance.instance : {
            name = instance.var.name
            fqdn = instance.fqdn
            public_ip = instance.network_interface[0].nat_ip_address
            private_ip = instance.network_interface[0].ipv4
        }
    ]
}