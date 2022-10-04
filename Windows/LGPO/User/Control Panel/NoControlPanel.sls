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
# LOCATION: \User\Control Panel\NoControlPanel.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Disables all Control Panel programs and the PC settings app.
# 
# This setting prevents Control.exe and SystemSettings.exe, the program files for Control Panel and PC settings, from starting. As a result, users cannot start Control Panel or PC settings, or run any of their items.
# 
# This setting removes Control Panel from:
# The Start screen
# File Explorer
# 
# This setting removes PC settings from:
# The Start screen
# Settings charm
# Account picture
# Search results
# 
# If users try to select a Control Panel item from the Properties item on a context menu, a message appears explaining that a setting prevents the action.
Prohibit access to Control Panel and PC settings:
  lgpo.set:
  - name: NoControlPanel
  - setting: Enabled
  - policy_class: User
