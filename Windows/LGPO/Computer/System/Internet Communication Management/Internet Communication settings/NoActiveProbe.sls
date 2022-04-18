# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the active tests performed by the Windows Network Connectivity Status Indicator (NCSI) to determine whether your computer is connected to the Internet or to a more limited network.
# 
# As part of determining the connectivity level, NCSI performs one of two active tests: downloading a page from a dedicated Web server or making a DNS request for a dedicated address.
# 
# If you enable this policy setting, NCSI does not run either of the two active tests. This may reduce the ability of NCSI, and of other components that use NCSI, to determine Internet access. 
# 
# If you disable or do not configure this policy setting, NCSI runs one of the two active tests.
Turn off Windows Network Connectivity Status Indicator active tests:
  lgpo.set:
  - name: NoActiveProbe
  - setting: Enabled
  - policy_class: Machine
