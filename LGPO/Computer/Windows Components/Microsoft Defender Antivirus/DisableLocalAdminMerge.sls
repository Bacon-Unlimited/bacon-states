# windows:SUPPORTED_Windows8
#
# This policy setting controls whether or not complex list settings configured by a local administrator are merged with Group Policy settings. This setting applies to lists such as threats and Exclusions.
# 
#     If you enable or do not configure this setting, unique items defined in Group Policy and in preference settings configured by the local administrator will be merged into the resulting effective policy. In the case of conflicts, Group policy Settings will override preference settings.
# 
#     If you disable this setting, only items defined by Group Policy will be used in the resulting effective policy. Group Policy settings will override preference settings configured by the local administrator.
Configure local administrator merge behavior for lists:
  lgpo.set:
  - name: DisableLocalAdminMerge
  - setting: Enabled
  - policy_class: Machine
