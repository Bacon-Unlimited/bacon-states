# windows:SUPPORTED_WindowsXP
#
# Configures the list of items displayed in the Places Bar in the Windows File/Open dialog. If enable this setting you can specify from 1 to 5 items to be displayed in the Places Bar.
# 
# The valid items you may display in the Places Bar are:
# 
# 1) Shortcuts to a local folders -- (ex. C:\Windows)
# 
# 2) Shortcuts to remote folders -- (\\server\share)
# 
# 3) FTP folders
# 
# 4) web folders
# 
# 5) Common Shell folders.
# 
# The list of Common Shell Folders that may be specified:
# 
# Desktop, Recent Places, Documents, Pictures, Music, Recently Changed, Attachments and Saved Searches.
# 
# If you disable or do not configure this setting the default list of items will be displayed in the Places Bar.
# 
# Note: In Windows Vista, this policy  setting applies only to applications that are using the Windows XP common dialog box style. This policy setting does not apply to the new Windows Vista common dialog box style.
Items displayed in Places Bar:
  lgpo.set:
  - name: PlacesBar
  - setting:
      Places0: text-placeholder
      Places1: text-placeholder
      Places2: text-placeholder
      Places3: text-placeholder
      Places4: text-placeholder
  - policy_class: User
