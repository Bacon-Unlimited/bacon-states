# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether a domain user can sign in using a picture password.
# 
# If you enable this policy setting, a domain user can't set up or sign in with a picture password. 
# 
# If you disable or don't configure this policy setting, a domain user can set up and use a picture password.
# 
# Note that the user's domain password will be cached in the system vault when using this feature.
Turn off picture password sign-in:
  lgpo.set:
  - name: BlockDomainPicturePassword
  - setting: Enabled
  - policy_class: Machine
