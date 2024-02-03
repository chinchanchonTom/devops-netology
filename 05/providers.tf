terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"

  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "tfstate-bes"
    region   = "ru-central1"
    key      = "terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true

        dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/b1g5p48q6nv2v6hkeh4s/etnas9hr3bkhj7l9r2d5"
        dynamodb_table    = "tfstate-develop"
  }
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}