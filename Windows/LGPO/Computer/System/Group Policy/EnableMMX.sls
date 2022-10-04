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
# LOCATION: \Computer\System\Group Policy\EnableMMX.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS4
#
# 
# This policy allows IT admins to turn off the ability to Link a Phone with a PC to continue reading, emailing and other tasks that requires linking between Phone and PC.
# 
# If you enable this policy setting, the Windows device will be able to enroll in Phone-PC linking functionality and participate in Continue on PC experiences.
# 
# If you disable this policy setting, the Windows device is not allowed to be linked to Phones, will remove itself from the device list of any linked Phones, and cannot participate in Continue on PC experiences.
# 
# If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Phone-PC linking on this device:
  lgpo.set:
  - name: EnableMMX
  - setting: Enabled
  - policy_class: Machine
