#!/bin/bash
terraform workspace select test
terraform destroy -auto-approve -var 'duration=1' -var 'units=minutes' -var 'test_workspace=test'