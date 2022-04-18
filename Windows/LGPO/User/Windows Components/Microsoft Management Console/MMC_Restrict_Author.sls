# windows:SUPPORTED_Win2k
#
# Prevents users from entering author mode.
# 
# This setting prevents users from opening the Microsoft Management Console (MMC) in author mode, explicitly opening console files in author mode, and opening any console files that open in author mode by default.
# 
# As a result, users cannot create console files or add or remove snap-ins. Also, because they cannot open author-mode console files, they cannot use the tools that the files contain.
# 
# This setting permits users to open MMC user-mode console files, such as those on the Administrative Tools menu in Windows 2000 Server family or Windows Server 2003 family. However, users cannot open a blank MMC console window on the Start menu. (To open the MMC, click Start, click Run, and type mmc.) Users also cannot open a blank MMC console window from a command prompt.
# 
# If you disable this setting or do not configure it, users can enter author mode and open author-mode console files.
Restrict the user from entering author mode:
  lgpo.set:
  - name: MMC_Restrict_Author
  - setting: Enabled
  - policy_class: User
