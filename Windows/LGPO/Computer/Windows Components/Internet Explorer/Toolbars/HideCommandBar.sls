# SUPPORTED_IE8
#
# This policy setting allows you to show or hide the Command bar.
# 
# If you enable this policy setting, the Command bar is hidden and the user cannot choose to show it.
# 
# If you disable this policy setting, the Command bar is shown and the user cannot choose to hide it.
# 
# If you do not configure this policy setting, the Command bar is shown by default, and the user can choose to hide it.
Hide the Command bar:
  lgpo.set:
  - name: HideCommandBar
  - setting: Enabled
  - policy_class: Machine
