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
# LOCATION: \Computer\Control Panel\User Accounts\UseDefaultTile.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows an administrator to standardize the account pictures for all users on a system to the default account picture. One application for this policy setting is to standardize the account pictures to a company logo.
# 
# Note: The default account picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\user.jpg. The default guest picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\guest.jpg. If the default pictures do not exist, an empty frame is displayed.
# 
# If you enable this policy setting, the default user account picture will display for all users on the system with no customization allowed.
# 
# If you disable or do not configure this policy setting, users will be able to customize their account pictures.
Apply the default account picture to all users:
  lgpo.set:
  - name: UseDefaultTile
  - setting: Enabled
  - policy_class: Machine
