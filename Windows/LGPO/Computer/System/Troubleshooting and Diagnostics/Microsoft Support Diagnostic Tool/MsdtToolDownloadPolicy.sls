# windows:SUPPORTED_WindowsVista
#
# This policy setting restricts the tool download policy for Microsoft Support Diagnostic Tool.
# 
# Microsoft Support Diagnostic Tool (MSDT) gathers diagnostic data for analysis by support professionals.  For some problems, MSDT may prompt the user to download additional tools for troubleshooting.
# 
# These tools are required to completely troubleshoot the problem.  If tool download is restricted, it may not be possible to find the root cause of the problem.
# 
# If you enable this policy setting for remote troubleshooting, MSDT prompts the user to download additional tools to diagnose problems on remote computers only.  If you enable this policy setting for local and remote troubleshooting, MSDT always prompts for additional tool downloading.
# 
# If you disable this policy setting, MSDT never downloads tools, and is unable to diagnose problems on remote computers.
# 
# If you do not configure this policy setting, MSDT prompts the user before downloading any additional tools.
# 
# No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.
# 
# This policy setting will take effect only when MSDT is enabled.
# 
# This policy setting will only take effect when the Diagnostic Policy Service (DPS) is in the running state.  When the service is stopped or disabled, diagnostic scenarios are not executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.
'Microsoft Support Diagnostic Tool: Restrict tool download':
  lgpo.set:
  - name: MsdtToolDownloadPolicy
  - setting:
      MsdtToolDownloadPolicyLevel: enum-placeholder
  - policy_class: Machine
