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
