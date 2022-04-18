# windows:SUPPORTED_Windows7
#
# This policy setting determines whether the print spooler will override the Driver Isolation compatibility reported by the print driver. This enables executing print drivers in an isolated process, even if the driver does not report compatibility.
# 
# If you enable this policy setting, the print spooler isolates all print drivers that do not explicitly opt out of Driver Isolation.
# 
# If you disable or do not configure this policy setting, the print spooler uses the Driver Isolation compatibility flag value reported by the print driver.
# 
# Notes:
# -Other system or driver policy settings may alter the process in which a print driver is executed.
# -This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications are not affected.
# -This policy setting takes effect without restarting the print spooler service.
Override print driver execution compatibility setting reported by print driver:
  lgpo.set:
  - name: PrintDriverIsolationOverrideCompat
  - setting: Enabled
  - policy_class: Machine
