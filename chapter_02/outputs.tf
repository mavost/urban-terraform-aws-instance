output "pet_name" {
  value = random_pet.name.id
}

output "pet_food" {
    value = var.pet_food
}
