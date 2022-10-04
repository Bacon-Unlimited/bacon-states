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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\PCH_DoNotReport.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting controls whether or not errors are reported to Microsoft.
# 
# Error Reporting is used to report information about a system or application that has failed or has stopped responding and is used to improve the quality of the product.
# 
# If you enable this policy setting, users are not given the option to report errors.
# 
# If you disable or do not configure this policy setting, the errors may be reported to Microsoft via the Internet or to a corporate file share.
# 
# This policy setting overrides any user setting made from the Control Panel for error reporting.
# 
# Also see the "Configure Error Reporting", "Display Error Notification" and "Disable Windows Error Reporting" policy settings under Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting.
Turn off Windows Error Reporting:
  lgpo.set:
  - name: PCH_DoNotReport
  - setting: Enabled
  - policy_class: Machine
