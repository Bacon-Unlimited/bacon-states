# windows:SUPPORTED_Windows8
#
# Prevents users from changing the background image shown when the machine is locked or when on the logon screen.
# 
# By default, users can change the background image shown when the machine is locked or displaying the logon screen.
# 
# If you enable this setting, the user will not be able to change their lock screen and logon image, and they will instead see the default image.
Prevent changing lock screen and logon image:
  lgpo.set:
  - name: CPL_Personalization_NoChangingLockScreen
  - setting: Enabled
  - policy_class: Machine
