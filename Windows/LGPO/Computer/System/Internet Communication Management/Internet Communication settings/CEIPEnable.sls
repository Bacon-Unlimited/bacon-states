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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\CEIPEnable.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the Windows Customer Experience Improvement Program. The Windows Customer Experience Improvement Program collects information about your hardware configuration and how you use our software and services to identify trends and usage patterns. Microsoft will not collect your name, address, or any other personally identifiable information. There are no surveys to complete, no salesperson will call, and you can continue working without interruption. It is simple and user-friendly.
# 
# If you enable this policy setting, all users are opted out of the Windows Customer Experience Improvement Program.
# 
# If you disable this policy setting, all users are opted into the Windows Customer Experience Improvement Program.
# 
# If you do not configure this policy setting, the administrator can use the Problem Reports and Solutions component in Control Panel to enable Windows Customer Experience Improvement Program for all users.
Turn off Windows Customer Experience Improvement Program:
  lgpo.set:
  - name: CEIPEnable
  - setting: Enabled
  - policy_class: Machine
