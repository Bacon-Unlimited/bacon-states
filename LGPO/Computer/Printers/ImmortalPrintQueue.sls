# windows:SUPPORTED_Win2k
#
# Determines whether the domain controller can prune (delete from Active Directory) the printers published by this computer.
# 
#             By default, the pruning service on the domain controller prunes printer objects from Active Directory if the computer that published them does not respond to contact requests. When the computer that published the printers restarts, it republishes any deleted printer objects.
# 
#             If you enable this setting or do not configure it, the domain controller prunes this computer's printers when the computer does not respond.
# 
#             If you disable this setting, the domain controller does not prune this computer's printers. This setting is designed to prevent printers from being pruned when the computer is temporarily disconnected from the network.
# 
#             Note: You can use the "Directory Pruning Interval" and "Directory Pruning Retry" settings to adjust the contact interval and number of contact attempts.
Allow pruning of published printers:
  lgpo.set:
  - name: ImmortalPrintQueue
  - setting: Enabled
  - policy_class: Machine
