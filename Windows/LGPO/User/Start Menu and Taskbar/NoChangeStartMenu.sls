# windows:SUPPORTED_Win2k
#
# This policy setting allows you to prevent users from changing their Start screen layout.
# 
# If you enable this setting, you will prevent a user from selecting an app, resizing a tile, pinning/unpinning a tile or a secondary tile, entering the customize mode and rearranging tiles within Start and Apps.
# 
# If you disable or do not configure this setting, you will allow a user to select an app, resize a tile, pin/unpin a tile or a secondary tile, enter the customize mode and rearrange tiles within Start and Apps.
Prevent users from customizing their Start Screen:
  lgpo.set:
  - name: NoChangeStartMenu
  - setting: Enabled
  - policy_class: User
