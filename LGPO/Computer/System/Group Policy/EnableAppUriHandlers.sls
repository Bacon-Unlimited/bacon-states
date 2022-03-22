# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting determines whether Windows supports web-to-app linking with app URI handlers.
# 
# Enabling this policy setting enables web-to-app linking so that apps can be launched with a http(s) URI.
# 
# Disabling this policy disables web-to-app linking and http(s) URIs will be opened in the default browser instead of launching the associated app.
# 
# If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Configure web-to-app linking with app URI handlers:
  lgpo.set:
  - name: EnableAppUriHandlers
  - setting: Enabled
  - policy_class: Machine
