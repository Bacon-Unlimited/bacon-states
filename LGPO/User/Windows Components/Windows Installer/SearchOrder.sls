# windows:SUPPORTED_Win2k
#
# This policy setting specifies the order in which Windows Installer searches for installation files.
# 
# If you disable or do not configure this policy setting, by default, the Windows Installer searches the network first, then removable media (floppy drive, CD-ROM, or DVD), and finally, the Internet (URL).
# 
# If you enable this policy setting, you can change the search order by specifying the letters representing each file source in the order that you want Windows Installer to search:
# 
# --   "n" represents the network;
# 
# --   "m" represents media;
# 
# --   "u" represents URL, or the Internet.
# 
# To exclude a file source, omit or delete the letter representing that source type.
Specify the order in which Windows Installer searches for installation files:
  lgpo.set:
  - name: SearchOrder
  - setting:
      SearchOrder: text-placeholder
  - policy_class: User
