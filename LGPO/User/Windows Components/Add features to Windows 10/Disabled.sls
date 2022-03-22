# windows:SUPPORTED_Windows7
#
# By default, Add features to Windows 10 is available for all administrators. 
# 
# If you enable this policy setting, the wizard will not run.
# 
# If you disable this policy setting or set it to Not Configured, the wizard will run.
Prevent the wizard from running.:
  lgpo.set:
  - name: Disabled
  - setting: Enabled
  - policy_class: User
