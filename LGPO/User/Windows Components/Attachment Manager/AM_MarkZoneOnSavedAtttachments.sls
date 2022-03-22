# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to manage whether Windows marks file attachments with information about their zone of origin (such as restricted, Internet, intranet, local). This requires NTFS in order to function correctly, and will fail without notice on FAT32. By not preserving the zone information, Windows cannot make proper risk assessments.
# 
# If you enable this policy setting, Windows does not mark file attachments with their zone information.
# 
# If you disable this policy setting, Windows marks file attachments with their zone information.
# 
# If you do not configure this policy setting, Windows marks file attachments with their zone information.
Do not preserve zone information in file attachments:
  lgpo.set:
  - name: AM_MarkZoneOnSavedAtttachments
  - setting: Enabled
  - policy_class: User
