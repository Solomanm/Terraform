variable "my_object" {
  type = object({name = string, userId = number})
}

output "variable_value" {
  value = var.my_object
}