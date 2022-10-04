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
# LOCATION: \Computer\Windows Components\App Package Deployment\DisableDeploymentToNonSystemVolumes.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3_Update2
#
# 
#         This policy setting allows you to manage installing Windows apps on additional volumes such as secondary partitions, USB drives, or SD cards.
# 
#         If you enable this setting, you can't move or install Windows apps on volumes that are not the system volume.
# 
#         If you disable or do not configure this setting, you can move or install Windows apps on other volumes.
#       
Disable installing Windows apps on non-system volumes:
  lgpo.set:
  - name: DisableDeploymentToNonSystemVolumes
  - setting: Enabled
  - policy_class: Machine
