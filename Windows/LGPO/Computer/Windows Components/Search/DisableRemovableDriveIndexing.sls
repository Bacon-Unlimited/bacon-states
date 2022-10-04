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
# LOCATION: \Computer\Windows Components\Search\DisableRemovableDriveIndexing.sls
#
# SUPPORTED WINDOWS OS
# WinBlueOnly
#
# This policy setting configures whether or not locations on removable drives can be added to libraries.
#       
# If you enable this policy setting, locations on removable drives cannot be added to libraries.  In addition, locations on removable drives cannot be indexed.
# 
# If you disable or do not configure this policy setting, locations on removable drives can be added to libraries.  In addition, locations on removable drives can be indexed.
Do not allow locations on removable drives to be added to libraries:
  lgpo.set:
  - name: DisableRemovableDriveIndexing
  - setting: Enabled
  - policy_class: Machine
