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
# LOCATION: \User\Windows Components\File Explorer\MaxRecentDocs.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7To2k
#
# "This policy setting allows you to set the maximum number of shortcuts the system can display in the Recent Items menu on the Start menu.
# 
# The Recent Items menu contains shortcuts to the nonprogram files the user has most recently opened.
# 
# If you enable this policy setting, the system displays the number of shortcuts specified by the policy setting.
# 
# If you disable or do not configure this policy setting, by default, the system displays shortcuts to the 10 most recently opened documents."
Maximum number of recent documents:
  lgpo.set:
  - name: MaxRecentDocs
  - setting:
      MaxRecentDocs: decimal-placeholder
  - policy_class: User
