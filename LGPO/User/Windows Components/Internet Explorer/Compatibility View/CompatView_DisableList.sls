# SUPPORTED_IE8
#
# This policy setting controls the Compatibility View feature, which allows the user to fix website display problems that he or she may encounter while browsing.
# 
# If you enable this policy setting, the user cannot use the Compatibility View button or manage the Compatibility View sites list.
# 
# If you disable or do not configure this policy setting, the user can use the Compatibility View button and manage the Compatibility View sites list.
Turn off Compatibility View:
  lgpo.set:
  - name: CompatView_DisableList
  - setting: Enabled
  - policy_class: User
