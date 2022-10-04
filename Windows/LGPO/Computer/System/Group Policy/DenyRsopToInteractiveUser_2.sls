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
# LOCATION: \Computer\System\Group Policy\DenyRsopToInteractiveUser_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting controls the ability of users to view their Resultant Set of Policy (RSoP) data.
# 
# By default, interactively logged on users can view their own Resultant Set of Policy (RSoP) data.
# 
# If you enable this policy setting, interactive users cannot generate RSoP data.
# 
# If you disable or do not configure this policy setting, interactive users can generate RSoP.
# 
# Note: This policy setting does not affect administrators. If you enable or disable this policy setting, by default administrators can view RSoP data.
# 
# Note: To view RSoP data on a client computer, use the RSoP snap-in for the Microsoft Management Console. You can launch the RSoP snap-in from the command line by typing RSOP.msc
# 
# Note: This policy setting exists as both a User Configuration and Computer Configuration setting.
# 
# Also, see the "Turn off Resultant set of Policy logging" policy setting in Computer Configuration\Administrative Templates\System\GroupPolicy.
Determine if interactive users can generate Resultant Set of Policy data:
  lgpo.set:
  - name: DenyRsopToInteractiveUser_2
  - setting: Enabled
  - policy_class: Machine
