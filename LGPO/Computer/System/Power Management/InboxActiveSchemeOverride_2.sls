# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the active power plan from a list of default Windows power plans. To specify a custom power plan, use the Custom Active Power Plan setting.
# 
# If you enable this policy setting, specify a power plan from the Active Power Plan list.
# 
# If you disable or do not configure this policy setting, users control this setting.
Select an active power plan:
  lgpo.set:
  - name: InboxActiveSchemeOverride_2
  - setting:
      InboxActiveSchemeOverrideEnter: enum-placeholder
  - policy_class: Machine
