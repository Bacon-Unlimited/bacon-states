# SUPPORTED_IE5
#
# Prevents users from saving a program or file that Microsoft Internet Explorer has downloaded to the hard disk.
# 
# If you enable this policy, users cannot save a program to disk by clicking the Save This Program to Disk command while attempting to download a file. The file will not be downloaded and users will be informed that the command is not available.
# 
# If you disable this policy or do not configure it, users can download programs from their browsers.
Disable Save this program to disk option:
  lgpo.set:
  - name: NoSelectDownloadDir
  - setting: Enabled
  - policy_class: User
