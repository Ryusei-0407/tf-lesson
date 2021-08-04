locals {
  letters = ["c", "a", "t"]

  cat = {
    name   = "neko"
    gender = "male"
  }
}

output "upper-case-list" {
  value = [for l in local.letters : upper(l)]
}

output "upper-case-map" {
  value = { for l in local.cat : l => upper(l) }
}
