# windows:SUPPORTED_Windows7
#
# This policy setting configures where custom settings location templates are stored and if the catalog will be used to replace the default Microsoft templates installed with the UE-V Agent.
# If you enable this policy setting, the UE-V Agent checks the specified location once each day and updates its synchronization behavior based on the templates in this location. Settings location templates added or updated since the last check are registered by the UE-V Agent. The UE-V Agent deregisters templates that were removed from this location.
# If you specify a UNC path and leave the option to replace the default Microsoft templates unchecked, the UE-V Agent will use the default Microsoft templates installed by the UE-V Agent and custom templates in the settings template catalog. If there are custom templates in the settings template catalog which use the same ID as the default Microsoft templates, they will be ignored.
# If you specify a UNC path and check the option to replace the default Microsoft templates, all of the default Microsoft templates installed by the UE-V Agent will be deleted from the computer and only the templates located in the settings template catalog will be used.
# If you disable this policy setting, the UE-V Agent will not use the custom settings location templates. If you disable this policy setting after it has been enabled, the UE-V Agent will not restore the default Microsoft templates. 
# If you do not configure this policy setting, any defined values will be deleted.
#       
Settings template catalog path:
  lgpo.set:
  - name: SettingsTemplateCatalogPath
  - setting:
      OverrideMSTemplates: boolean-placeholder
      SettingsTemplateCatalogPath: text-placeholder
  - policy_class: Machine
