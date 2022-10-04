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
# LOCATION: \User\Windows Components\Windows PowerShell\EnableUpdateHelpDefaultSourcePath.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WIN7
#
# This policy setting allows you to set the default value of the SourcePath parameter on the Update-Help cmdlet.
# 
# If you enable this policy setting, the Update-Help cmdlet will use the specified value as the default value for the SourcePath parameter. This default value can be overridden by specifying a different value with the SourcePath parameter on the Update-Help cmdlet.
# 
# If this policy setting is disabled or not configured, this policy setting does not set a default value for the SourcePath parameter of the Update-Help cmdlet.
# 
# Note: This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
#       
Set the default source path for Update-Help:
  lgpo.set:
  - name: EnableUpdateHelpDefaultSourcePath
  - setting:
      SourcePathForUpdateHelp: text-placeholder
  - policy_class: User
