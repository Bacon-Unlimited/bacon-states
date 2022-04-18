# windows:SUPPORTED_Windows7
#
# This policy setting determines whether the print spooler will execute print drivers in an isolated or separate process. When print drivers are loaded in an isolated process (or isolated processes), a print driver failure will not cause the print spooler service to fail.
# 
# If you enable or do not configure this policy setting, the print spooler will execute print drivers in an isolated process by default.
# 
# If you disable this policy setting, the print spooler will execute print drivers in the print spooler process.
# 
# 
# Notes:
# -Other system or driver policy settings may alter the process in which a print driver is executed.
# -This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications are not affected.
# -This policy setting takes effect without restarting the print spooler service.
Execute print drivers in isolated processes:
  lgpo.set:
  - name: PrintDriverIsolationExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
