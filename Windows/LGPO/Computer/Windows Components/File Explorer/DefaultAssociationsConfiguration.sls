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
# LOCATION: \Computer\Windows Components\File Explorer\DefaultAssociationsConfiguration.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy specifies the path to a file (e.g. either stored locally or on a network location) that contains file type and protocol default application associations. This file can be created using the DISM tool.
# 
# For example:
# Dism.exe /Online /Export-DefaultAppAssociations:C:\AppAssoc.txt
# 
# For more information, refer to the DISM documentation on TechNet.
# 
# If this group policy is enabled and the client machine is domain-joined, the file will be processed and default associations will be applied at logon time.
# 
# If the group policy is not configured, disabled, or the client machine is not domain-joined, no default associations will be applied at logon time.
# 
# If the policy is enabled, disabled, or not configured, users will still be able to override default file type and protocol associations.
Set a default associations configuration file:
  lgpo.set:
  - name: DefaultAssociationsConfiguration
  - setting:
      DefaultAssociationsConfiguration_TextBox: text-placeholder
  - policy_class: Machine
