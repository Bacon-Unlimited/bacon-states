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
# LOCATION: \Computer\System\Group Policy\EnableCDP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting determines whether the Windows device is allowed to participate in cross-device experiences (continue experiences).
# 
# If you enable this policy setting, the Windows device is discoverable by other Windows devices that belong to the same user, and can participate in cross-device experiences.
# 
# If you disable this policy setting, the Windows device is not discoverable by other devices, and cannot participate in cross-device experiences.
# 
# If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Continue experiences on this device:
  lgpo.set:
  - name: EnableCDP
  - setting: Enabled
  - policy_class: Machine
