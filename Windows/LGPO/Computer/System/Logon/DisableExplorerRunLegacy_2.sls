# windows:SUPPORTED_Win2k
#
# This policy setting ignores the customized run list.
# 
# You can create a customized list of additional programs and documents that the system starts automatically when it runs on Windows Vista, Windows XP Professional, and Windows 2000 Professional. These programs are added to the standard run list of programs and services that the system starts.
# 
# If you enable this policy setting, the system ignores the run list for Windows Vista, Windows XP Professional, and Windows 2000 Professional.
# 
# If you disable or do not configure this policy setting, Windows Vista adds any customized run list configured to its run list.
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.
# 
# Note: To create a customized run list by using a policy setting, use the ""Run these applications at startup"" policy setting.
# 
# Also, see the ""Do not process the run once list"" policy setting.
Do not process the legacy run list:
  lgpo.set:
  - name: DisableExplorerRunLegacy_2
  - setting: Enabled
  - policy_class: Machine
