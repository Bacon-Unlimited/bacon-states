# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting lets you decide whether the Address bar drop-down functionality is available in Microsoft Edge. We recommend disabling this setting if you want to minimize network connections from Microsoft Edge to Microsoft services.
# 
#         Note: Disabling this setting turns off the Address bar drop-down functionality. Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the "Configure search suggestions in Address bar" setting.
# 
#         If you enable or don't configure this setting, employees can see the Address bar drop-down functionality in Microsoft Edge.
# 
#         If you disable this setting, employees won't see the Address bar drop-down functionality in Microsoft Edge. This setting also disables the user-defined setting, "Show search and site suggestions as I type".
Allow Address bar drop-down list suggestions:
  lgpo.set:
  - name: AllowAddressBarDropdown
  - setting: Enabled
  - policy_class: User
