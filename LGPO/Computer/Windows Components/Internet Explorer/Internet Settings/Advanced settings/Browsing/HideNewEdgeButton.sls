# SUPPORTED_IE11WIN10_1703
#
# This policy setting allows you to manage if users can see the button (next to the New Tab button) that opens Microsoft Edge.
# 
# If you enable this policy setting, the button to open Microsoft Edge from Internet Explorer will be hidden.
# 
# If you disable this policy setting, the button to open Microsoft Edge from Internet Explorer will be shown.
# 
# If you do not configure this policy setting, the button to open Microsoft Edge from Internet Explorer can be configured by the user.
Hide the button (next to the New Tab button) that opens Microsoft Edge:
  lgpo.set:
  - name: HideNewEdgeButton
  - setting: Enabled
  - policy_class: Machine
