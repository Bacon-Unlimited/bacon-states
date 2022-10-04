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
# LOCATION: \User\Windows Components\Windows Logon Options\LogonHoursPolicyDescription.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy controls which action will be taken when the logon hours expire for the logged on user. The actions include lock the workstation, disconnect the user, or log the user off completely.
# 
# If you choose to lock or disconnect a session, the user cannot unlock the session or reconnect except during permitted logon hours.
# 
# If you choose to log off a user, the user cannot log on again except during permitted logon hours. If you choose to log off a user, the user might lose unsaved data.
# 
# If you enable this setting, the system will perform the action you specify when the users logon hours expire.
# 
# If you disable or do not configure this setting, the system takes no action when the users logon hours expire. The user can continue the existing session, but cannot log on to a new session.
# 
# Note: If you configure this setting, you might want to examine and appropriately configure the Remove logon hours expiration warnings setting
Set action to take when logon hours expire:
  lgpo.set:
  - name: LogonHoursPolicyDescription
  - setting:
      LogonHoursPolicyDescription: enum-placeholder
  - policy_class: User
