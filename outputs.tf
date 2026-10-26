output "pet_name" {
  description = "Generated pet name"
  value       = var.enabled ? random_pet.petname[0].id : null
}

output "output_filename" {
  description = "File path configured for the example"
  value       = var.filename
}
