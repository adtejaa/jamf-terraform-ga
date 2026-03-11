resource "jamfpro_static_computer_group" "managed_favourites_exclusion" {
  name = "GA - Managed Favourites Exclusion"

  lifecycle {
    ignore_changes = [
      assigned_computer_ids
    ]
  }
}

