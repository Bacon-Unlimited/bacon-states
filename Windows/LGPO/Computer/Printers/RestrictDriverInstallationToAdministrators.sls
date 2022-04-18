# windows:SUPPORTED_Windows7
#
# 
# Determines whether users that aren't Administrators can install print drivers on this computer.
# 
# By default, users that aren't Administrators can't install print drivers on this computer.
# 
# If you enable this setting or do not configure it, the system will limit installation of print drivers to Adminstrators of this computer.
# 
# If you disable this setting, the system won't limit installation of print drivers to this computer.
#         
Limits print driver installation to Administrators:
  lgpo.set:
  - name: RestrictDriverInstallationToAdministrators
  - setting: Enabled
  - policy_class: Machine
