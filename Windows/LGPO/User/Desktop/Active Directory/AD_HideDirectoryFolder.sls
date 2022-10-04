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
# LOCATION: \User\Desktop\Active Directory\AD_HideDirectoryFolder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kOnly
#
# Hides the Active Directory folder in Network Locations.
# 
# The Active Directory folder displays Active Directory objects in a browse window.
# 
# If you enable this setting, the Active Directory folder does not appear in the Network Locations folder.
# 
# If you disable this setting or do not configure it, the Active Directory folder appears in the Network Locations folder.
# 
# This setting is designed to let users search Active Directory but not tempt them to casually browse Active Directory.
# 
Hide Active Directory folder:
  lgpo.set:
  - name: AD_HideDirectoryFolder
  - setting: Enabled
  - policy_class: User
