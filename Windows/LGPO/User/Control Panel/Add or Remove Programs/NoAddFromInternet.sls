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
# LOCATION: \User\Control Panel\Add or Remove Programs\NoAddFromInternet.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Removes the "Add programs from Microsoft" section from the Add New Programs page. This setting prevents users from using Add or Remove Programs to connect to Windows Update.
# 
# If you disable this setting or do not configure it, "Add programs from Microsoft" is available to all users.
# 
# This setting does not prevent users from using other tools and methods to connect to Windows Update.
# 
# Note: If the "Hide Add New Programs page" setting is enabled, this setting is ignored.
Hide the "Add programs from Microsoft" option:
  lgpo.set:
  - name: NoAddFromInternet
  - setting: Enabled
  - policy_class: User
