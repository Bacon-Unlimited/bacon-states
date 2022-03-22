# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# Restricts package point and print to approved servers.
# 
# This policy setting restricts package point and print connections to approved servers. This setting only applies to Package Point and Print connections, and is completely independent from the "Point and Print Restrictions" policy that governs the behavior of non-package point and print connections.
# 
# Windows Vista and later clients will attempt to make a non-package point and print connection anytime a package point and print connection fails, including attempts that are blocked by this policy. Administrators may need to set both policies to block all print connections to a specific print server.
# 
# If this setting is enabled, users will only be able to package point and print to print servers approved by the network administrator. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.
# 
# If this setting is disabled, or not configured, package point and print will not be restricted to specific print servers.
Package Point and print - Approved servers:
  lgpo.set:
  - name: PackagePointAndPrintServerList
  - setting:
      PackagePointAndPrintServerList_Edit:
      - placeholder1
      - placeholder2
  - policy_class: User
