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
# LOCATION: \Computer\Network\DirectAccess Client Experience Settings\FriendlyName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Specifies the string that appears for DirectAccess connectivity when the user clicks the Networking notification area icon. For example, you can specify Contoso Intranet Access for the DirectAccess clients of the Contoso Corporation.
# 
# If this setting is not configured, the string that appears for DirectAccess connectivity is Corporate Connection.
# 
Friendly Name:
  lgpo.set:
  - name: FriendlyName
  - setting:
      FriendlyName_Control: text-placeholder
  - policy_class: Machine
