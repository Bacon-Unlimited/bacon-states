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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\DisableLocalAdminMerge.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls whether or not complex list settings configured by a local administrator are merged with Group Policy settings. This setting applies to lists such as threats and Exclusions.
# 
#     If you enable or do not configure this setting, unique items defined in Group Policy and in preference settings configured by the local administrator will be merged into the resulting effective policy. In the case of conflicts, Group policy Settings will override preference settings.
# 
#     If you disable this setting, only items defined by Group Policy will be used in the resulting effective policy. Group Policy settings will override preference settings configured by the local administrator.
Configure local administrator merge behavior for lists:
  lgpo.set:
  - name: DisableLocalAdminMerge
  - setting: Enabled
  - policy_class: Machine
