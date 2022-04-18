# windows:SUPPORTED_Windows_10_0
#
# If you disable this policy setting, users will not be able to invoke any system UI by swiping in from any screen edge.
# 
# If you enable or do not configure this policy setting, users will be able to invoke system UI by swiping in from the screen edges.
#       
Allow edge swipe:
  lgpo.set:
  - name: AllowEdgeSwipe
  - setting: Enabled
  - policy_class: Machine
