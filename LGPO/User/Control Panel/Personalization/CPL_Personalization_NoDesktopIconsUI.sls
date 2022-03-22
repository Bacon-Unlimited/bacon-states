# windows:SUPPORTED_Win2k
#
# Prevents users from changing the desktop icons.
# 
# By default, users can use the Desktop Icon Settings dialog in the Personalization or Display Control Panel to show, hide, or change the desktop icons.
# 
# If you enable this setting, none of the desktop icons can be changed by the user.
# 
# For systems prior to Windows Vista, this setting also hides the Desktop tab in the Display Control Panel.
Prevent changing desktop icons:
  lgpo.set:
  - name: CPL_Personalization_NoDesktopIconsUI
  - setting: Enabled
  - policy_class: User
