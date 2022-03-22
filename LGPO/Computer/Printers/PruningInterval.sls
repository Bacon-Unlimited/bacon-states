# windows:SUPPORTED_Win2k
#
# Specifies how often the pruning service on a domain controller contacts computers to verify that their printers are operational.
# 
#             The pruning service periodically contacts computers that have published printers. If a computer does not respond to the contact message (optionally, after repeated attempts), the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.
# 
#             By default, the pruning service contacts computers every eight hours and allows two repeated contact attempts before deleting printers from Active Directory.
# 
#             If you enable this setting, you can change the interval between contact attempts.
# 
#             If you do not configure or disable this setting the default values will be used.
# 
#             Note: This setting is used only on domain controllers.
Directory pruning interval:
  lgpo.set:
  - name: PruningInterval
  - setting:
      PruningIntervalTitle: enum-placeholder
  - policy_class: Machine
