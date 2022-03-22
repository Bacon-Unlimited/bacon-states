# TS_SUPPORTED_Win2k
#
# Specifies whether to remove the Windows Security item from the Settings menu on Remote Desktop clients. You can use this setting to prevent inexperienced users from logging off from Remote Desktop Services inadvertently.
# 
# If the status is set to Enabled, Windows Security does not appear in Settings on the Start menu. As a result, users must type a security attention sequence, such as CTRL+ALT+END, to open the Windows Security dialog box on the client computer.
# 
# If the status is set to Disabled or Not Configured, Windows Security remains in the Settings menu.
Remove Windows Security item from Start menu:
  lgpo.set:
  - name: TS_NoSecurityMenu
  - setting: Enabled
  - policy_class: Machine
