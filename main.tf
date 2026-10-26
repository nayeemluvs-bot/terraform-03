terraform {
  required_version = ">= 1.5.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "petname" {
  count     = var.enabled ? 1 : 0
  prefix    = var.prefix
  separator = "."
  length    = var.pet_length
}

resource "local_file" "my_pet" {
  count    = var.enabled ? 1 : 0
  filename = var.filename
  content  = "${var.content}\nGenerated pet name: ${random_pet.petname[0].id}\n"
}