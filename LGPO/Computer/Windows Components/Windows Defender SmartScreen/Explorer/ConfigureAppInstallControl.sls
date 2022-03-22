# windows:SUPPORTED_Windows_10_0_RS5
#
# App Install Control is a feature of Windows Defender SmartScreen that helps protect PCs by allowing users to install apps only from the Store.  SmartScreen must be enabled for this feature to work properly.
# 
# If you enable this setting, you must choose from the following behaviors:
# 
#      - Turn off app recommendations
# 
#      - Show me app recommendations
# 
#      - Warn me before installing apps from outside the Store
# 
#      - Allow apps from Store only
# 
# If you disable or don't configure this setting, users will be able to install apps from anywhere, including files downloaded from the Internet.
Configure App Install Control:
  lgpo.set:
  - name: ConfigureAppInstallControl
  - setting:
      ConfigureAppInstallControl_Dropdown: enum-placeholder
  - policy_class: Machine
