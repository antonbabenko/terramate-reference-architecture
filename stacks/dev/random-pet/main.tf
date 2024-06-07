// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "random_pet" "this" {
  length = 2
}
output "id" {
  value = random_pet.this.id
}
