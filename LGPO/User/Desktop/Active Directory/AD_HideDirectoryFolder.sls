# windows:SUPPORTED_Win2kOnly
#
# Hides the Active Directory folder in Network Locations.
# 
# The Active Directory folder displays Active Directory objects in a browse window.
# 
# If you enable this setting, the Active Directory folder does not appear in the Network Locations folder.
# 
# If you disable this setting or do not configure it, the Active Directory folder appears in the Network Locations folder.
# 
# This setting is designed to let users search Active Directory but not tempt them to casually browse Active Directory.
# 
Hide Active Directory folder:
  lgpo.set:
  - name: AD_HideDirectoryFolder
  - setting: Enabled
  - policy_class: User
