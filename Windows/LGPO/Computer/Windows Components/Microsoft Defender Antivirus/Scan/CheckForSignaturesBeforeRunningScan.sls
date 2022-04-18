# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur before running a scan. 
# 
#     This setting applies to scheduled scans as well as the command line "mpcmdrun -SigUpdate", but it has no effect on scans initiated manually from the user interface.
# 
#     If you enable this setting, a check for new security intelligence will occur before running a scan.
# 
#     If you disable this setting or do not configure this setting, the scan will start using the existing security intelligence.
Check for the latest virus and spyware security intelligence before running a scheduled scan:
  lgpo.set:
  - name: CheckForSignaturesBeforeRunningScan
  - setting: Enabled
  - policy_class: Machine
