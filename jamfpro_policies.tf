resource "jamfpro_policy" "jamfpro_policy_00100001" {
  name                          = "GA - List Files in Root"
  enabled                       = false
  trigger_checkin               = false
  trigger_enrollment_complete   = false
  trigger_login                 = false
  trigger_network_state_changed = false
  trigger_startup               = false
  trigger_other                 = "EVENT" // "USER_INITIATED" for self service trigger , "EVENT" for an event trigger
  frequency                     = "Once per computer"
  retry_event                   = "none"
  retry_attempts                = -1
  notify_on_each_failed_retry   = false
  target_drive                  = "/"
  offline                       = false





  scope {
    all_computers = false
    all_jss_users = false

    computer_ids = []



  }


  payloads {


    maintenance {
      recon = true
    }
    files_processes {
      run_command = "ls -lah /"
    }

  }

  lifecycle {
    create_before_destroy = true
  }

}
