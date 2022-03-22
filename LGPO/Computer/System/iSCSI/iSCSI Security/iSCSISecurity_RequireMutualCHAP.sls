# windows:SUPPORTED_WindowsVista
#
# If enabled then only those sessions that are configured for mutual CHAP may be established. If disabled then sessions that are configured for mutual CHAP or sessions not configured for mutual CHAP may be established.
Do not allow sessions without mutual CHAP:
  lgpo.set:
  - name: iSCSISecurity_RequireMutualCHAP
  - setting: Enabled
  - policy_class: Machine
