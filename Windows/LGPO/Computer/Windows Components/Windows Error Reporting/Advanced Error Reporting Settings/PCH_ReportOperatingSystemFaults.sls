# windows:SUPPORTED_WindowsNET_XP
#
# This policy setting controls whether errors in the operating system are included Windows Error Reporting is enabled.
# 
# If you enable this policy setting, Windows Error Reporting includes operating system errors.
# 
# If you disable this policy setting, operating system errors are not included in error reports.
# 
# If you do not configure this policy setting, users can change this setting in Control Panel. By default, Windows Error Reporting settings in Control Panel are set to upload operating system errors.
# 
# See also the Configure Error Reporting policy setting.
Report operating system errors:
  lgpo.set:
  - name: PCH_ReportOperatingSystemFaults
  - setting: Enabled
  - policy_class: Machine
