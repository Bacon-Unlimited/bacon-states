# windows:SUPPORTED_Win2k
#
# Determines whether the pruning service on a domain controller prunes printer objects that are not automatically republished whenever the host computer does not respond,just as it does with Windows 2000 printers. This setting applies to printers running operating systems other than Windows 2000 and to Windows 2000 printers published outside their forest.
# 
#             The Windows pruning service prunes printer objects from Active Directory when the computer that published them does not respond to contact requests. Computers running Windows 2000 Professional detect and republish deleted printer objects when they rejoin the network. However, because non-Windows 2000 computers and computers in other domains cannot republish printers in Active Directory automatically, by default, the system never prunes their printer objects.
# 
#             You can enable this setting to change the default behavior. To use this setting, select one of the following options from the "Prune non-republishing printers" box:
# 
#             --  "Never" specifies that printer objects that are not automatically republished are never pruned. "Never" is the default.
# 
#             --  "Only if Print Server is found" prunes printer objects that are not automatically republished only when the print server responds, but the printer is unavailable.
# 
#             --  "Whenever printer is not found" prunes printer objects that are not automatically republished whenever the host computer does not respond, just as it does with Windows 2000 printers.
# 
#             Note: This setting applies to printers published by using Active Directory Users and Computers or Pubprn.vbs. It does not apply to printers published by using Printers in Control Panel.
# 
#             Tip: If you disable automatic pruning, remember to delete printer objects manually whenever you remove a printer or print server.
Prune printers that are not automatically republished:
  lgpo.set:
  - name: PruneDownlevel
  - setting:
      PruneDownlevelTitle: enum-placeholder
  - policy_class: Machine
