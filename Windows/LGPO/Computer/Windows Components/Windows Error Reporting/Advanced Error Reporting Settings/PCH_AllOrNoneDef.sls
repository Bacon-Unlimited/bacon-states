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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\PCH_AllOrNoneDef.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET_XP
#
# This policy setting controls whether errors in general applications are included in reports when Windows Error Reporting is enabled.
# 
# If you enable this policy setting, you can instruct Windows Error Reporting in the Default pull-down menu to report either all application errors (the default setting), or no application errors.
# 
# If the Report all errors in Microsoft applications check box is filled, all errors in Microsoft applications are reported, regardless of the setting in the Default pull-down menu. When the Report all errors in Windows check box is filled, all errors in Windows applications are reported, regardless of the setting in the Default dropdown list. The Windows applications category is a subset of Microsoft applications.
# 
# If you disable or do not configure this policy setting, users can enable or disable Windows Error Reporting in Control Panel. The default setting in Control Panel is Upload all applications.
# 
# This policy setting is ignored if the Configure Error Reporting policy setting is disabled or not configured.
# 
# For related information, see the Configure Error Reporting and Report Operating System Errors policy settings.
Default application reporting settings:
  lgpo.set:
  - name: PCH_AllOrNoneDef
  - setting:
      PCH_AllOrNoneDef_List: enum-placeholder
      PCH_AllOrNoneIncMS_Chk: boolean-placeholder
      PCH_AllOrNoneWinComp_Chk: boolean-placeholder
  - policy_class: Machine
