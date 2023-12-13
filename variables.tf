variable "pet_food" {
    type = string
    # if setting no default and also no command line assignment or variable
    #    file means that TF will prompt for a missing variable
    default = "vegetables_root"
}