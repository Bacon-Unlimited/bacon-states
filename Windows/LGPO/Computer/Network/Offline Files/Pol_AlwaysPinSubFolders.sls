# windows:SUPPORTED_WindowsPreVista
#
# Makes subfolders available offline whenever their parent folder is made available offline.
# 
# This setting automatically extends the "make available offline" setting to all new and existing subfolders of a folder. Users do not have the option of excluding subfolders.
# 
# If you enable this setting, when you make a folder available offline, all folders within that folder are also made available offline. Also, new folders that you create within a folder that is available offline are made available offline when the parent folder is synchronized.
# 
# If you disable this setting or do not configure it, the system asks users whether they want subfolders to be made available offline when they make a parent folder available offline.
Subfolders always available offline:
  lgpo.set:
  - name: Pol_AlwaysPinSubFolders
  - setting: Enabled
  - policy_class: Machine
