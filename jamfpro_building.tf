# data "vault_kv_secret_v2" "build_pfx" {
#   mount = "secret"
#   name  = "jamf/building"
# }

# data "vault_kv_secret_v2" "categor_pfx" {
#   mount = "secret"
#   name  = "jamf/category"
# }

# output "building_prefix" {
#   value = data.vault_kv_secret_v2.build_pfx.data["prefex"]
#   sensitive = true
# }

# output "building_prefix" {
#   value = data.vault_kv_secret_v2.categor_pfx
#   sensitive = true
# }


resource "jamfpro_building" "jamfpro_building_001" {
  name            = "GA-CBA-APPLE"
  street_address1 = "The McIntosh Tree"
  street_address2 = "One Apple Park Way"
  city            = "Cupertino"
  state_province  = "California"
  zip_postal_code = "95014"
  country         = "The United States of America"
}

