###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "name_vm" {
  type = string
  default = "netology"
  
}

variable "image_id" {
  type = string
  default = "ubuntu-2004-lts"
  
}
variable "vm_resources_db" {
  type = map
  default = {  
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }

variable "vm_resources_web" {
  type = map
  default = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
  }
  

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINghz0PlApTKSDs5KWx50QQrlVG+6/PnVxw2hi0UKXmO maksim@DESKTOP-KV1P3C1"
  description = "ssh-keygen -t ed25519"
}
