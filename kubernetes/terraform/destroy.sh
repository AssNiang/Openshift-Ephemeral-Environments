#!/bin/bash
# pwd > ~/Desktop/test_at_command_pwd
terraform destroy -auto-approve -var 'duration=1' -var 'units=minutes'