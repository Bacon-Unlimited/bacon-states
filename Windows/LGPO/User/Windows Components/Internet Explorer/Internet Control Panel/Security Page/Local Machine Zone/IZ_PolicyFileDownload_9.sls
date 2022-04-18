# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether file downloads are permitted from the zone. This option is determined by the zone of the page with the link causing the download, not the zone from which the file is delivered.
# 
# If you enable this policy setting, files can be downloaded from the zone.
# 
# If you disable this policy setting, files are prevented from being downloaded from the zone.
# 
#  If you do not configure this policy setting, files can be downloaded from the zone.
Allow file downloads:
  lgpo.set:
  - name: IZ_PolicyFileDownload_9
  - setting:
      IZ_Partname1803: enum-placeholder
  - policy_class: User
