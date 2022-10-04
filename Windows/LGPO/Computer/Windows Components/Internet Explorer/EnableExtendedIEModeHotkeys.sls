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
# LOCATION: \Computer\Windows Components\Internet Explorer\EnableExtendedIEModeHotkeys.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting lets admins enable extended Microsoft Edge Internet Explorer mode hotkeys, such as "Ctrl+S" to have "Save as" functionality.
# 
# If you enable this policy, extended hotkey functionality is enabled in Internet Explorer mode and work the same as Internet Explorer.
# 
# If you disable, or don't configure this policy, extended hotkeys will not work in Internet Explorer mode.
# 
# For more information, see https://go.microsoft.com/fwlink/?linkid=2102115
Enable extended hot keys in Internet Explorer mode:
  lgpo.set:
  - name: EnableExtendedIEModeHotkeys
  - setting: Enabled
  - policy_class: Machine