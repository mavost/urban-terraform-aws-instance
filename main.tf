terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "random" {}

provider "aws" {
  region  = "eu-central-1"
  profile = "AdministratorAccess"
}

# module "chapter_01" {
#   source = "./chapter_01"
# }

module "chapter_02" {
  source = "./chapter_02"
  # send variable(s) to module
  pet_food = var.pet_food
}
