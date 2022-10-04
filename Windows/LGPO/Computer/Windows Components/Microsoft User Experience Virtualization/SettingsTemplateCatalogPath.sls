####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\SettingsTemplateCatalogPath.sls
#
# SUPPORTED WINDOWS OS
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
