# windows:SUPPORTED_Windows7
#
# Prevents users from changing the sound scheme.
# 
# By default, users can use the Sounds tab in the Sound Control Panel to add, remove, or change the system Sound Scheme.
# 
# If you enable this setting, none of the Sound Scheme settings can be changed by the user.
Prevent changing sounds:
  lgpo.set:
  - name: CPL_Personalization_NoSoundSchemeUI
  - setting: Enabled
  - policy_class: User
