# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) service will not allow RunAs credentials to be stored for any plug-ins.
# 
# If you enable this policy setting, the WinRM service will not allow the RunAsUser or RunAsPassword configuration values to be set for any plug-ins.  If a plug-in has already set the RunAsUser and RunAsPassword configuration values, the RunAsPassword configuration value will be erased from the credential store on this computer.
# 
# If you disable or do not configure this policy setting, the WinRM service will allow the RunAsUser and RunAsPassword configuration values to be set for plug-ins and the RunAsPassword value will be stored securely.
# 
# If you enable and then disable this policy setting,any values that were previously configured for RunAsPassword will need to be reset.
Disallow WinRM from storing RunAs credentials:
  lgpo.set:
  - name: DisableRunAs
  - setting: Enabled
  - policy_class: Machine
