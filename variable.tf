variable "jamf_server" {
  type = string

  #   validation {
  #     condition     = can(regex("^.*\\.jamfcloud\\.com$", var.jamf_server))
  #     error_message = "Not a Jamf Cloud domain"
  #   }
}


variable "building_prefix" {
  type    = string
  default = 122
}


variable "x" {
  type = map(number)
  default = {
    a = 1
    b = 2
  }
}


variable "test_list" {

  default = ["one", "two", "three"]
}

variable "build_new" {
  type = string
}



variable "jamfpro_instance_fqdn" {
  description = "The Jamf Pro FQDN (fully qualified domain name). Example: https://mycompany.jamfcloud.com"
  sensitive   = true
  
}

variable "jamfpro_auth_method" {
  description = "Auth method chosen for Jamf. Options are 'basic' or 'oauth2'."
  sensitive   = true
  default     = "basic"
}

# variable "jamfpro_client_id" {
#   description = "The Jamf Pro Client ID for authentication."
#   sensitive   = true
#   default     = ""
# }

# variable "jamfpro_client_secret" {
#   description = "The Jamf Pro Client Secret for authentication."
#   sensitive   = true
#   default     = ""
# }

variable "jamfpro_basic_auth_username" {
  description = "The Jamf Pro username used for authentication."
  
}

variable "jamfpro_basic_auth_password" {
  description = "The Jamf Pro password used for authentication."
  sensitive   = true
  
}

variable "enable_client_sdk_logs" {
  description = "Enable client SDK logs."
  default     = false
}

variable "client_sdk_log_export_path" {
  description = "Specify the path to export http client logs to."
  default     = ""
}

variable "jamfpro_hide_sensitive_data" {
  description = "Define whether sensitive fields should be hidden in logs."
  default     = true
}

variable "jamfpro_custom_cookies" {
  description = "Custom cookies for the HTTP client."
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "jamfpro_jamf_load_balancer_lock" {
  description = "Programmatically determines all available web app members in the load balancer and locks all instances of httpclient to the app for faster executions."
  default     = true
}

variable "jamfpro_token_refresh_buffer_period_seconds" {
  description = "The buffer period in seconds for token refresh."
  default     = 300
}

variable "jamfpro_mandatory_request_delay_milliseconds" {
  description = "A mandatory delay after each request before returning to reduce high volume of requests in a short time."
  default     = 1000
}

variable "dictionary" {
  type = map(string)
  default = {
    "name" = "kevin"
    "age"  = "30"
  }

}


variable "object_test" {
  type = object({
    name = string,
    age  = number
  })
}

variable "list_values" {
  type = set(string)
}


variable "db_password" {
  description = "The database password."
  sensitive   = false
  type        = string

  validation {
    condition     = length(var.db_password) >= 12
    error_message = "idiotttt"
  }
}


variable "check_count" {
   
default = ""
}