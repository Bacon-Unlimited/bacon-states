# SUPPORTED_IE8_10
#
# This policy setting controls the Compatibility View button that appears on the Command bar. This button allows the user to fix website display problems that he or she may encounter while browsing.
# 
# If you enable this policy setting, the user cannot use the Compatibility View button.
# 
# If you disable or do not configure this policy setting, the user can use the Compatibility View button.
Turn off Compatibility View button:
  lgpo.set:
  - name: CompatView_ShowButton
  - setting: Enabled
  - policy_class: User
