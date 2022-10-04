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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_PrintingConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide how the print functionality behaves while in Microsoft Defender Application Guard.
# 
# If you enable this setting, you must choose one or many of the following behaviors:
# 
# - Disable all print functionality in Application Guard.
# 
# - Enable printing to existing network printers.
# 
# - Enable printing to local printers.
# 
# - Enable printing to PDF, allows people to print as PDF and save the resulting file on the host.
# 
# - Enable printing to XPS, allows people to print as XPS and save the resulting file on the host.
# 
# If you disable or don't configure this setting, all print functionality is turned off in Application Guard.
#         
Configure Microsoft Defender Application Guard print settings:
  lgpo.set:
  - name: AppHVSI_PrintingConfig
  - setting:
      AppHVSIPrintingSettings_TextBox: decimal-placeholder
  - policy_class: Machine
