# windows:SUPPORTED_Win2kSP1
#
# Determines whether screen savers used on the computer are password protected.
# 
# If you enable this setting, all screen savers are password protected. If you disable this setting, password protection cannot be set on any screen saver.
# 
# This setting also disables the "Password protected" checkbox on the Screen Saver dialog in the Personalization or Display Control Panel, preventing users from changing the password protection setting.
# 
# If you do not configure this setting, users can choose whether or not to set password protection on each screen saver.
# 
# To ensure that a computer will be password protected, enable the "Enable Screen Saver" setting and specify a timeout via the "Screen Saver timeout" setting.
# 
# Note: To remove the Screen Saver dialog, use the "Prevent changing Screen Saver" setting.
Password protect the screen saver:
  lgpo.set:
  - name: CPL_Personalization_ScreenSaverIsSecure
  - setting: Enabled
  - policy_class: User
