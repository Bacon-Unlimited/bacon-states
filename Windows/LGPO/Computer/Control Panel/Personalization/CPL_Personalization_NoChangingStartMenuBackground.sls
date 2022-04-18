# windows:SUPPORTED_Windows8
#
# Prevents users from changing the look of their start menu background, such as its color or accent.
# 
# By default, users can change the look of their start menu background, such as its color or accent.
# 
# If you enable this setting, the user will be assigned the default start menu background and colors and will not be allowed to change them.
# 
# If the "Force a specific background and accent color" policy is also set on a supported version of Windows, then those colors take precedence over this policy.
# 
# If the "Force a specific Start background" policy is also set on a supported version of Windows, then that background takes precedence over this policy.
# 
Prevent changing start menu background:
  lgpo.set:
  - name: CPL_Personalization_NoChangingStartMenuBackground
  - setting: Enabled
  - policy_class: Machine
