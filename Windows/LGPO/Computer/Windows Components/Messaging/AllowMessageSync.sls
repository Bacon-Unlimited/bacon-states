# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy setting allows backup and restore of cellular text messages to Microsoft's cloud services.
Allow Message Service Cloud Sync:
  lgpo.set:
  - name: AllowMessageSync
  - setting: Enabled
  - policy_class: Machine
