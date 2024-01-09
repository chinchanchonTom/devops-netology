resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.image_id
}
resource "yandex_compute_instance" "platform" {
  name        = local.name_vm_web_local
  platform_id = "standard-v3"
  resources {
    cores         = var.vm_resources_web.cores
    memory        = var.vm_resources_web.memory
    core_fraction = var.vm_resources_web.core_fraction
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
    nat       = true
  }

  metadata = local.vms_ssh_root_key
}



resource "yandex_compute_instance" "platform_db" {
  name        = local.name_vm_db_local
  platform_id = "standard-v3"
  resources {
    cores         = var.vm_resources_db.cores
    memory        = var.vm_resources_db.memory
    core_fraction = var.vm_resources_db.core_fraction
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
    nat       = true
  }

  metadata = local.vms_ssh_root_key
}

