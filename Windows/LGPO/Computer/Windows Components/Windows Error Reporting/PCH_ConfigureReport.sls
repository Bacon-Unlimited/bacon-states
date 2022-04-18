# windows:SUPPORTED_WindowsNET_XP
#
# This policy setting configures how errors are reported to Microsoft, and what information is sent when Windows Error Reporting is enabled.
# 
# This policy setting does not enable or disable Windows Error Reporting. To turn Windows Error Reporting on or off, see the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings.
# 
# Important: If the Turn off Windows Error Reporting policy setting is not configured, then Control Panel settings for Windows Error Reporting override this policy setting.
# 
# If you enable this policy setting, the setting overrides any user changes made to Windows Error Reporting settings in Control Panel, and default values are applied for any Windows Error Reporting policy settings that are not configured (even if users have changed settings by using Control Panel). If you enable this policy setting, you can configure the following settings in the policy setting:
# 
# - ""Do not display links to any Microsoft More information websites"": Select this option if you do not want error dialog boxes to display links to Microsoft websites.
# 
# - ""Do not collect additional files"": Select this option if you do not want additional files to be collected and included in error reports.
# 
# - ""Do not collect additional computer data"": Select this if you do not want additional information about the computer to be collected and included in error reports.
# 
# - ""Force queue mode for application errors"": Select this option if you do not want users to report errors. When this option is selected, errors are stored in a queue directory, and the next administrator to log on to the computer can send the error reports to Microsoft.
# 
# - ""Corporate file path"": Type a UNC path to enable Corporate Error Reporting.  All errors are stored at the specified location instead of being sent directly to Microsoft, and the next administrator to log onto the computer can send the error reports to Microsoft.
# 
# - ""Replace instances of the word Microsoft with"":  You can specify text with which to customize your error report dialog boxes.  The word ""Microsoft"" is replaced with the specified text.
# 
# If you do not configure this policy setting, users can change Windows Error Reporting settings in Control Panel. By default, these settings are Enable Reporting on computers that are running Windows XP, and Report to Queue on computers that are running Windows Server 2003.
# 
# If you disable this policy setting, configuration settings in the policy setting are left blank.
# 
# See related policy settings Display Error Notification (same folder as this policy setting), and Turn off Windows Error Reporting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings.
Configure Error Reporting:
  lgpo.set:
  - name: PCH_ConfigureReport
  - setting:
      PCH_CompanyText_Edit: text-placeholder
      PCH_DumpPath_Edit: text-placeholder
      PCH_ForceQ_Chk: boolean-placeholder
      PCH_NoExternalURL_Chk: boolean-placeholder
      PCH_NoFileCollect_Chk: boolean-placeholder
      PCH_NoLevelTwo_Chk: boolean-placeholder
  - policy_class: Machine
