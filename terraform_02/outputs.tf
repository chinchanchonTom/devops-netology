output "vm_external_ip_address_vm" {
    value ={

        hostname       = yandex_compute_instance.platform.name
        nat_ip_address = yandex_compute_instance.platform.network_interface[0].nat_ip_address

    }     
    
    description = "vm external ip" 
}


output "vm_external_ip_address_db" {
    value ={

        hostname       = yandex_compute_instance.platform_db.name
        nat_ip_address = yandex_compute_instance.platform_db.network_interface[0].nat_ip_address

    }     
    
    description = "vm external ip" 
}
