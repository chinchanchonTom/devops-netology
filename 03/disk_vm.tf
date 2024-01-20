
resource "yandex_compute_disk" "dynamic_res" {
    count = 3
    name = "disk-${count.index+1}"
    size = 1 
}

data "yandex_compute_image" "ubuntu_storage" {
  family = "ubuntu-2004-lts"
}

resource "yandex_compute_instance" "str" {
    name = "storage"
    platform_id = "standard-v3"
    resources {
      cores = 2
      memory = 2
      core_fraction = 20
    }

    boot_disk {
      initialize_params {
        image_id = data.yandex_compute_image.ubuntu.image_id

      }
    }
    dynamic "secondary_disk" {
        for_each = {for disk in yandex_compute_disk.dynamic_res[*]: disk.name => disk }
        content {
          disk_id = secondary_disk.value.id
        }
      
    }

    network_interface {
      subnet_id = yandex_vpc_subnet.develop.id
      nat = true
    }

   metadata = local.vms_metadata


  
}


