# SUPPORTED_WindowsLonghornServerDesktopExperienceOrVista
#
# This policy setting determines the execution level for S.M.A.R.T.-based disk diagnostics. 
# 
# Self-Monitoring And Reporting Technology (S.M.A.R.T.) is a standard mechanism for storage devices to report faults to Windows. A disk that reports a S.M.A.R.T. fault may need to be repaired or replaced. The Diagnostic Policy Service (DPS) detects and logs S.M.A.R.T. faults to the event log when they occur. 
# 
# If you enable this policy setting, the DPS also warns users of S.M.A.R.T. faults and guides them through backup and recovery to minimize potential data loss. 
# 
# If you disable this policy, S.M.A.R.T. faults are still detected and logged, but no corrective action is taken. 
# 
# If you do not configure this policy setting, the DPS enables S.M.A.R.T. fault resolution by default. 
# 
# This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured. 
# 
# No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately. 
# 
# This policy setting takes effect only when the DPS is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console. 
# 
# Note: For Windows Server systems, this policy setting applies only if the Desktop Experience optional component is installed and the Remote Desktop Services role is not installed. 
#       
'Disk Diagnostic: Configure execution level':
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
