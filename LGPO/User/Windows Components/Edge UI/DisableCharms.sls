# windows:SUPPORTED_Windows_6_3
#
# This policy setting allows you to prevent Search, Share, Start, Devices, and Settings from appearing when the mouse is pointing to the upper-right corner of the screen.
# 
# If you enable this policy setting, Search, Share, Start, Devices, and Settings will no longer appear when the mouse is pointing to the upper-right corner. They'll still be available if the mouse is pointing to the lower-right corner.
# 
# If you disable or don't configure this policy setting, Search, Share, Start, Devices, and Settings will be available by default, and the user can configure this setting.
? Search, Share, Start, Devices, and Settings don't appear when the mouse is pointing
  to the upper-right corner of the screen
: lgpo.set:
  - name: DisableCharms
  - setting: Enabled
  - policy_class: User
