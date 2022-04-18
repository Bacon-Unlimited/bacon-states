# SUPPORTED_IE9
#
# This policy setting controls the ActiveX Filtering feature for websites that are running ActiveX controls. The user can choose to turn off ActiveX Filtering for specific websites so that ActiveX controls can run properly.
# 
# If you enable this policy setting, ActiveX Filtering is enabled by default for the user. The user cannot turn off ActiveX Filtering, although they may add per-site exceptions.
# 
# If you disable or do not configure this policy setting, ActiveX Filtering is not enabled by default for the user. The user can turn ActiveX Filtering on or off.
Turn on ActiveX Filtering:
  lgpo.set:
  - name: TurnOnActiveXFiltering
  - setting: Enabled
  - policy_class: User
