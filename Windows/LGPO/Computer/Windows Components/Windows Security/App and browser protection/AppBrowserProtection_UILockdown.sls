# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Hide the App and browser protection area in Windows Security.
# 
#         Enabled:
#         The App and browser protection area will be hidden.
# 
#         Disabled:
#         The App and browser protection area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the App and browser protection area:
  lgpo.set:
  - name: AppBrowserProtection_UILockdown
  - setting: Enabled
  - policy_class: Machine
