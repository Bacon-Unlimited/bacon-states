# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# This policy restricts clients computers to use package point and print only.
# 
# If this setting is enabled, users will only be able to point and print to printers that use package-aware drivers. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.
# 
# If this setting is disabled, or not configured, users will not be restricted to package-aware point and print only.
Only use Package Point and print:
  lgpo.set:
  - name: PackagePointAndPrintOnly
  - setting: Enabled
  - policy_class: User
