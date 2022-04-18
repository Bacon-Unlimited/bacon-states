# windows:SUPPORTED_Windows8
#
# Determines if print driver components are isolated from applications instead of normally loading them into applications. Isolating print drivers greatly reduces the risk of a print driver failure causing an application crash.
# 
# Not all applications support driver isolation. By default, Microsoft Excel 2007, Excel 2010, Word 2007, Word 2010 and certain other applications are configured to support it. Other applications may also be capable of isolating print drivers, depending on whether they are configured for it.
# 
# If you enable or do not configure this policy setting, then applications that are configured to support driver isolation will be isolated.
# 
# If you disable this policy setting, then print drivers will be loaded within all associated application processes.
# 
# Notes:
# -This policy setting applies only to applications opted into isolation.
# -This policy setting applies only to print drivers loaded by applications. Print drivers loaded by the print spooler are not affected.
# -This policy setting is only checked once during the lifetime of a process. After changing the policy, a running application must be relaunched before settings take effect.
Isolate print drivers from applications:
  lgpo.set:
  - name: ApplicationDriverIsolation
  - setting: Enabled
  - policy_class: Machine
