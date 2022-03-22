# windows:SUPPORTED_Win2k
#
# Prevents users from saving certain changes to the desktop.
# 
# If you enable this setting, users can change the desktop, but some changes, such as the position of open windows or the size and position of the taskbar, are not saved when users log off. However, shortcuts placed on the desktop are always saved.
Don't save settings at exit:
  lgpo.set:
  - name: NoSaveSettings
  - setting: Enabled
  - policy_class: User
