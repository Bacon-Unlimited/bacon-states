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
# LOCATION: \Computer\System\Group Policy\DisableUsersFromMachGP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to control a user's ability to invoke a computer policy refresh.
# 
# If you enable this policy setting, users are not able to invoke a refresh of computer policy. Computer policy will still be applied at startup or when an official policy refresh occurs.
# 
# If you disable or do not configure this policy setting, the default behavior applies. By default, computer policy is applied when the computer starts up. It also applies at a specified refresh interval or when manually invoked by the user.
# 
# Note: This policy setting applies only to non-administrators. Administrators can still invoke a refresh of computer policy at any time, no matter how this policy setting is configured.
# 
# Also, see the "Set Group Policy refresh interval for computers" policy setting to change the policy refresh interval.
# 
# Note: If you make changes to this policy setting, you must restart your computer for it to take effect.
Remove users' ability to invoke machine policy refresh:
  lgpo.set:
  - name: DisableUsersFromMachGP
  - setting: Enabled
  - policy_class: Machine
