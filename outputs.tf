output "root_module_var" {
    value = "output from root module"
}

output "chapter_2_module_var_pet_name" {
    value = "${module.chapter_02.pet_name}"
}

output "chapter_2_module_var_pet_food" {
    value = "${module.chapter_02.pet_food}"
}
