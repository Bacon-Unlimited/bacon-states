# windows:SUPPORTED_Windows_6_3only
#
# Forces Windows to use the specified colors for the background and accent. The color values are specified in hex as #RGB.
# 
# By default, users can change the background and accent colors.
# 
# If this setting is enabled, the background and accent colors of Windows will be set to the specified colors and users cannot change those colors. This setting will not be applied if the specified colors do not meet a contrast ratio of 2:1 with white text.
Force a specific background and accent color:
  lgpo.set:
  - name: CPL_Personalization_PersonalColors
  - setting:
      PersonalColors_Accent: text-placeholder
      PersonalColors_Background: text-placeholder
  - policy_class: Machine
