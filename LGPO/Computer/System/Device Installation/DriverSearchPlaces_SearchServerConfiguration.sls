# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the search server that Windows uses to find updates for device drivers.
# 
# If you enable this policy setting, you can select whether Windows searches Windows Update (WU), searches a Managed Server, or a combination of both.
# 
# Note that if both are specified, then Windows will first search the Managed Server, such as a Windows Server Update Services (WSUS) server. Only if no update is found will Windows then also search Windows Update.
# 
# If you disable or do not configure this policy setting, members of the Administrators group can determine the server used in the search for device drivers.
#       
Specify the search server for device driver updates:
  lgpo.set:
  - name: DriverSearchPlaces_SearchServerConfiguration
  - setting:
      DriverSearchPlaces_SearchServerConfiguration_dropdown: enum-placeholder
  - policy_class: Machine
