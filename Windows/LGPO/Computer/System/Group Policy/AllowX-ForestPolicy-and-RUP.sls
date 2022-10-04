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
# LOCATION: \Computer\System\Group Policy\AllowX-ForestPolicy-and-RUP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting allows user-based policy processing, roaming user profiles, and user object logon scripts for interactive logons across forests.
# 
# This policy setting affects all user accounts that interactively log on to a computer in a different forest when a trust across forests or a two-way forest trust exists.
# 
# If you do not configure this policy setting:
# -  No user-based policy settings are applied from the user's forest.
# -  Users do not receive their roaming profiles; they receive a local profile on the computer from the local forest. A warning message appears to the user, and an event log message (1529) is posted.
# -  Loopback Group Policy processing is applied, using the Group Policy Objects (GPOs) that are scoped to the computer.
# - An event log message (1109) is posted, stating that loopback was invoked in Replace mode.
# 
# If you enable this policy setting, the behavior is exactly the same as in Windows 2000: user policy is applied, and a roaming user profile is allowed from the trusted forest.
# 
# If you disable this policy setting, the behavior is the same as if it is not configured.
Allow cross-forest user policy and roaming user profiles:
  lgpo.set:
  - name: AllowX-ForestPolicy-and-RUP
  - setting: Enabled
  - policy_class: Machine
