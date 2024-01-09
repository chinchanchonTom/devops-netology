locals {
    
  name_vm_web_local = "${var.name_vm}-develop-platform-web"
  name_vm_db_local  = "${var.name_vm}-develop-platform-db"

  vms_ssh_root_key ={

    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"

  }

}