data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2004-lts"
}

resource "yandex_compute_instance" "vm_web-count" {
    count = 2
    name = "web-${count.index+1}"
    platform_id = "standard-v3"
    resources {
      cores         = 2
      memory        = 2
      core_fraction = 20
    
    }
    boot_disk {
      initialize_params {
        image_id = data.yandex_compute_image.ubuntu.image_id
      }
    }
  scheduling_policy {
    preemptible = true

  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat       = true

  }
  metadata = {

    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"

  }

}