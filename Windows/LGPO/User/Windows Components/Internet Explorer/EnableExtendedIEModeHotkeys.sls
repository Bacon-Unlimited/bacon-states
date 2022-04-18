# SUPPORTED_IE11
#
# This policy setting lets admins enable extended Microsoft Edge Internet Explorer mode hotkeys, such as "Ctrl+S" to have "Save as" functionality.
# 
# If you enable this policy, extended hotkey functionality is enabled in Internet Explorer mode and work the same as Internet Explorer.
# 
# If you disable, or don't configure this policy, extended hotkeys will not work in Internet Explorer mode.
# 
# For more information, see https://go.microsoft.com/fwlink/?linkid=2102115
Enable extended hot keys in Internet Explorer mode:
  lgpo.set:
  - name: EnableExtendedIEModeHotkeys
  - setting: Enabled
  - policy_class: User
