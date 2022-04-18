# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether a domain user can sign in using a convenience PIN.
# 
# If you enable this policy setting, a domain user can set up and sign in with a convenience PIN.
# 
# If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.
# 
# Note: The user's domain password will be cached in the system vault when using this feature.
# 
# To configure Windows Hello for Business, use the Administrative Template policies under Windows Hello for Business.
Turn on convenience PIN sign-in:
  lgpo.set:
  - name: AllowDomainPINLogon
  - setting: Enabled
  - policy_class: Machine
