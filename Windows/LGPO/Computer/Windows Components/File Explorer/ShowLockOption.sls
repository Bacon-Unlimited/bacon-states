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
# LOCATION: \Computer\Windows Components\File Explorer\ShowLockOption.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Shows or hides lock from the user tile menu.
# If you enable this policy setting, the lock option will be shown in the User Tile menu.
# 
# If you disable this policy setting, the lock option will never be shown in the User Tile menu.
# 
# If you do not configure this policy setting, users will be able to choose whether they want lock to show through the Power Options Control Panel.
Show lock in the user tile menu:
  lgpo.set:
  - name: ShowLockOption
  - setting: Enabled
  - policy_class: Machine
