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
# LOCATION: \Computer\System\System Restore\SR_DisableConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Allows you to disable System Restore configuration through System Protection.
# 
# This policy setting allows you to turn off System Restore configuration through System Protection.
# 
# System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. The behavior of this policy setting depends on the "Turn off System Restore" policy setting.
# 
# If you enable this policy setting, the option to configure System Restore through System Protection is disabled.
# 
# If you disable or do not configure this policy setting, users can change the System Restore settings through System Protection. 
# 
# Also, see the "Turn off System Restore" policy setting. If the "Turn off System Restore" policy setting is enabled, the "Turn off System Restore configuration" policy setting is overwritten.
Turn off Configuration:
  lgpo.set:
  - name: SR_DisableConfig
  - setting: Enabled
  - policy_class: Machine
