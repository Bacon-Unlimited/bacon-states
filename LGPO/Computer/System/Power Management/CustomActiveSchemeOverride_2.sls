# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the active power plan from a specified power plans GUID. The GUID for a custom power plan GUID can be retrieved by using powercfg, the power configuration command line tool.  
# 
# If you enable this policy setting, you must specify a power plan, specified as a GUID using the following format: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX (For example, 103eea6e-9fcd-4544-a713-c282d8e50083), indicating the power plan to be active.
# 
# If you disable or do not configure this policy setting, users can see and change this setting.
Specify a custom active power plan:
  lgpo.set:
  - name: CustomActiveSchemeOverride_2
  - setting:
      CustomActiveSchemeOverrideEnter: text-placeholder
  - policy_class: Machine
