# windows:SUPPORTED_Windows_6_3
#
# Forces the Start screen to use one of the available backgrounds, 1 through 20, and prevents the user from changing it.
# 
# If this setting is set to zero or not configured, then Start uses the default background, and users can change it.
# 
# If this setting is set to a nonzero value, then Start uses the specified background, and users cannot change it. If the specified background is not supported, the default background is used.
Force a specific Start background:
  lgpo.set:
  - name: CPL_Personalization_StartBackground
  - setting:
      StartBackgroundSpin: decimal-placeholder
  - policy_class: Machine
