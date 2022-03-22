# windows:SUPPORTED_Win2k
#
# If this policy setting is enabled, it prevents users from deleting local and network printers.
# 
#           If a user tries to delete a printer, such as by using the Delete option in Printers in Control Panel, a message appears explaining that a setting prevents the action.
# 
#           This setting does not prevent users from running other programs to delete a printer.
# 
#           If this policy is disabled, or not configured, users can delete printers using the methods described above.
Prevent deletion of printers:
  lgpo.set:
  - name: NoDeletePrinter
  - setting: Enabled
  - policy_class: User
