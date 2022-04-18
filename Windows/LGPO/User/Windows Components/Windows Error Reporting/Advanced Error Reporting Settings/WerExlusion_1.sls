# windows:SUPPORTED_WindowsVista
#
# This policy setting limits Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.
# 
# If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. To remove an application from the list, click the name, and then press DELETE. If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence.
# 
# If you disable or do not configure this policy setting, errors are reported on all Microsoft and Windows applications by default.
List of applications to be excluded:
  lgpo.set:
  - name: WerExlusion_1
  - setting:
      WerExlusionList:
      - placeholder1
      - placeholder2
  - policy_class: User
