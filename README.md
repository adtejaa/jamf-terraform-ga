# Jamf Pro Terraform Module

This module allows you to manage Jamf Pro resources using Terraform. It provides the ability to create and manage various Jamf Pro objects such as policies, categories, computer groups, and buildings.

## Requirements

- Terraform v0.12 or higher
- Jamf Pro API credentials

## Usage

To use this module, you need to provide the following variables:

- `jamf_url`: The URL of your Jamf Pro server
- `jamf_user`: The username for the Jamf Pro API user
- `jamf_password`: The password for the Jamf Pro API user

Example usage:

```hcl
module "jamf_pro" {
  source = "./jamf-terraform-ga"

  jamf_url     = "https://your-jamf-pro-server.com"
  jamf_user    = "your-api-username"
  jamf_password = "your-api-password"
}
```

## Resources

This module supports the following resources:

- `jamfpro_policy`
- `jamfpro_category`
- `jamfpro_computer_group`
- `jamfpro_building`

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| jamf_url | The URL of your Jamf Pro server | string | n/a | yes |
| jamf_user | The username for the Jamf Pro API user | string | n/a | yes |
| jamf_password | The password for the Jamf Pro API user | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| jamfpro_policy_id | The ID of the created policy |
| jamfpro_category_id | The ID of the created category |
| jamfpro_computer_group_id | The ID of the created computer group |
| jamfpro_building_id | The ID of the created building |

## License

This project is licensed under the MIT License.