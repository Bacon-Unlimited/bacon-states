# windows:SUPPORTED_Windows8
#
# This policy determines if v4 printer drivers are allowed to run printer extensions.
# 
#         V4 printer drivers may include an optional, customized user interface known as a printer extension. These extensions may provide access to more device features, but this may not be appropriate for all enterprises.
# 
#         If you enable this policy setting, then all printer extensions will not be allowed to run.
# 
#         If you disable this policy setting or do not configure it, then all printer extensions that have been installed will be allowed to run.
Do not allow v4 printer drivers to show printer extensions:
  lgpo.set:
  - name: V4DriverDisallowPrinterExtension
  - setting: Enabled
  - policy_class: Machine
