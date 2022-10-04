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
# LOCATION: \Computer\Windows Components\Internet Explorer\Toolbars\LockToolbars.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to lock or unlock the toolbars on the user interface.
# 
# If you enable this policy setting, the toolbars are locked and the user cannot move them.
# 
# If you disable this policy setting, the toolbars are unlocked and the user can move them.
# 
# If you do not configure this policy setting, the toolbars are locked by default, but the user can unlock them through the shortcut menu of the Command bar.
Lock all toolbars:
  lgpo.set:
  - name: LockToolbars
  - setting: Enabled
  - policy_class: Machine
