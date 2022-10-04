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
# LOCATION: \User\Windows Components\File Explorer\AlwaysShowClassicMenu.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures File Explorer to always display the menu bar.
# 
# Note: By default, the menu bar is not displayed in File Explorer.
# 
# If you enable this policy setting, the menu bar will be displayed in File Explorer.
# 
# If you disable or do not configure this policy setting, the menu bar will not be displayed in File Explorer.
# 
# Note: When the menu bar is not displayed, users can access the menu bar by pressing the 'ALT' key.
'Display the menu bar in File Explorer ':
  lgpo.set:
  - name: AlwaysShowClassicMenu
  - setting: Enabled
  - policy_class: User
