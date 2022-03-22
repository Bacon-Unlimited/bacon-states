# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you determine whether the integrated unblock feature will be available in the logon User Interface (UI).
# 
# In order to use the integrated unblock feature your smart card must support this feature.  Please check with your hardware manufacturer to see if your smart card supports this feature.
# 
# If you enable this policy setting, the integrated unblock feature will be available.
# 
# If you disable or do not configure this policy setting then the integrated unblock feature will not be available.
Allow Integrated Unblock screen to be displayed at the time of logon:
  lgpo.set:
  - name: AllowIntegratedUnblock
  - setting: Enabled
  - policy_class: Machine
