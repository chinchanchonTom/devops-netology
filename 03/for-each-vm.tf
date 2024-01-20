
/*
locals {
  vms_res = [
    {
      vm_name = "main"
      vm_cpu = 2
      vm_ram = 4
      vm_frac = 25
    },
    {
      vm_name = "replica"
      vm_cpu = 4
      vm_ram = 4
      vm_frac = 25
    }
  ]
  
}
*/

resource "yandex_compute_instance" "vm_main_replica" {
  depends_on = [ yandex_compute_instance.vm_web-count]
  for_each = {for vm in var.each_vm:"${vm.vm_name}" => vm }
  name = each.value.vm_name
  platform_id = "standard-v3"
  resources {
    cores = each.value.cpu
    memory = each.value.ram
   

  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = each.value.disk
    }
  }
  
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat =true
  }

  metadata = local.vms_metadata

}