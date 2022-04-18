# windows:SUPPORTED_WindowsVista
#
# This policy setting prevents Local Group Policy Objects (Local GPOs) from being applied.
# 
# By default, the policy settings in Local GPOs are applied before any domain-based GPO policy settings. These policy settings can apply to both users and the local computer. You can disable the processing and application of all Local GPOs to ensure that only domain-based GPOs are applied.
# 
# If you enable this policy setting, the system does not process and apply any Local GPOs.
# 
# If you disable or do not configure this policy setting, Local GPOs continue to be applied.
# 
# Note: For computers joined to a domain, it is strongly recommended that you only configure this policy setting  in domain-based GPOs. This policy setting will be ignored on computers that are joined to a workgroup.
# 
Turn off Local Group Policy Objects processing:
  lgpo.set:
  - name: DisableLGPOProcessing
  - setting: Enabled
  - policy_class: Machine
