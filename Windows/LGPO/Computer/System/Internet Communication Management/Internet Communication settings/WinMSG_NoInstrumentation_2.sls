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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\WinMSG_NoInstrumentation_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNET
#
# This policy setting specifies whether Windows Messenger collects anonymous information about how Windows Messenger software and service is used.
# 
# With the Customer Experience Improvement program, users can allow Microsoft to collect anonymous information about how the product is used.  This information is used to improve the product in future releases.
# 
# If you enable this policy setting, Windows Messenger does not collect usage information, and the user settings to enable the collection of usage information are not shown.
# 
# If you disable this policy setting, Windows Messenger collects anonymous usage information, and the setting is not shown.
# 
# If you do not configure this policy setting, users have the choice to opt in and allow information to be collected.
Turn off the Windows Messenger Customer Experience Improvement Program:
  lgpo.set:
  - name: WinMSG_NoInstrumentation_2
  - setting: Enabled
  - policy_class: Machine
