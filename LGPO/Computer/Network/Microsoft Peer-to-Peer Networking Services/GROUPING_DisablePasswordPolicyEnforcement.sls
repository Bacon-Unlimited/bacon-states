# windows:SUPPORTED_WindowsVista
#
# By default, when a Peer Group is created that allows for password-authentication (or the password for such a Group is changed), Peer Grouping validates that the password meets the password complexity requirements for the local system.  Thus, it will not allow any passwords to be used for a Peer Group that are weaker than what would be allowed for a login password.
# 
# This setting controls this validation behavior.  If set to 1, then this validation will not be performed and any password will be allowed.  If set to 0, the validation will be performed.
#       
Disable password strength validation for Peer Grouping:
  lgpo.set:
  - name: GROUPING_DisablePasswordPolicyEnforcement
  - setting: Enabled
  - policy_class: Machine
