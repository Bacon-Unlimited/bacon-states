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
# LOCATION: \User\Start Menu and Taskbar\ClearRecentProgForNewUserInStartMenu.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVistaAndWindows10
#
# If you enable this policy setting, the recent programs list in the start menu will be blank for each new user.
# 
# If you disable or do not configure this policy, the start menu recent programs list will be pre-populated with programs for each new user.
Clear the recent programs list for new users:
  lgpo.set:
  - name: ClearRecentProgForNewUserInStartMenu
  - setting: Enabled
  - policy_class: User
