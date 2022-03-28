# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy setting configures the system to prompt the user to clear the TPM if the TPM is detected to be in any state other than Ready. This policy will take effect only if the systems TPM is in a state other than Ready, including if the TPM is Ready, with reduced functionality. The prompt to clear the TPM will start occurring after the next reboot, upon user login only if the logged in user is part of the Administrators group for the system. The prompt can be dismissed, but will reappear after every reboot and login until the policy is disabled or until the TPM is in a Ready state.
Configure the system to clear the TPM if it is not in a ready state.:
  lgpo.set:
  - name: ClearTPMIfNotReady_Name
  - setting: Enabled
  - policy_class: Machine
