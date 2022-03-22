# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you determine whether an optional field will be displayed during logon and elevation that allows a user to enter his or her user name or user name and domain, thereby associating a certificate with that user.
# 
# If you enable this policy setting then an optional field that allows a user to enter their user name or user name and domain will be displayed.
# 
# If you disable or do not configure this policy setting, an optional field that allows users to enter their user name or user name and domain will not be displayed.
Allow user name hint:
  lgpo.set:
  - name: X509HintsNeeded
  - setting: Enabled
  - policy_class: Machine
