# SUPPORTED_IE8ONLY
#
# This policy setting allows you to prevent the quick pick menu from appearing when a user clicks in the Search box.
# 
# If you enable this policy setting, when a user clicks in the Search box, the quick pick menu does not appear until the user starts typing.
# 
# If you disable or do not configure this policy setting, when a user clicks in the Search box, the quick pick menu appears.
Turn off the quick pick menu:
  lgpo.set:
  - name: SearchTurnOffQuickPick
  - setting: Enabled
  - policy_class: Machine
