# SUPPORTED_IE7
#
# This policy setting prevents the user from using the Reset Internet Explorer Settings feature. Reset Internet Explorer Settings allows the user to reset all settings changed since installation, delete browsing history, and disable add-ons that are not preapproved.
# 
# If you enable this policy setting, the user cannot use Reset Internet Explorer Settings.
# 
# If you disable or do not configure this policy setting, the user can use Reset Internet Explorer Settings.
Do not allow resetting Internet Explorer settings:
  lgpo.set:
  - name: Advanced_DisableRIED
  - setting: Enabled
  - policy_class: User
