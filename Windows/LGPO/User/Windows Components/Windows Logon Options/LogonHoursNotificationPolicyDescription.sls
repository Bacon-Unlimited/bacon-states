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
# LOCATION: \User\Windows Components\Windows Logon Options\LogonHoursNotificationPolicyDescription.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy controls whether the logged on user should be notified when his logon hours are about to expire. By default, a user is notified before logon hours expire, if actions have been set to occur when the logon hours expire.
# 
# If you enable this setting, warnings are not displayed to the user before the logon hours expire.
# 
# If you disable or do not configure this setting, users receive warnings before the logon hours expire, if actions have been set to occur when the logon hours expire.
# 
# Note: If you configure this setting, you might want to examine and appropriately configure the Set action to take when logon hours expire setting. If Set action to take when logon hours expire is disabled or not configured, the Remove logon hours expiration warnings setting will have no effect, and users receive no warnings about logon hour expiration
Remove logon hours expiration warnings:
  lgpo.set:
  - name: LogonHoursNotificationPolicyDescription
  - setting: Enabled
  - policy_class: User
