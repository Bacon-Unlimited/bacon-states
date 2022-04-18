# windows:SUPPORTED_Win2k
#
# Specifies how many times the pruning service on a domain controller repeats its attempt to contact a computer before pruning the computer's printers.
# 
#             The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer does not respond to the contact message, the message is repeated for the specified number of times. If the computer still fails to respond, then the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.
# 
#             By default, the pruning service contacts computers every eight hours and allows two retries before deleting printers from Active Directory. You can use this setting to change the number of retries.
# 
#             If you enable this setting, you can change the interval between attempts.
# 
#             If you do not configure or disable this setting, the default values are used.
# 
#             Note: This setting is used only on domain controllers.
Directory pruning retry:
  lgpo.set:
  - name: PruningRetries
  - setting:
      PruningRetriesTitle: enum-placeholder
  - policy_class: Machine
