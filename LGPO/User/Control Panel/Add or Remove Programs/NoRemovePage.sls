# windows:SUPPORTED_WindowsPreVista
#
# Removes the Change or Remove Programs button from the Add or Remove Programs bar. As a result, users cannot view or change the attached page.
# 
# The Change or Remove Programs button lets users uninstall, repair, add, or remove features of installed programs.
# 
# If you disable this setting or do not configure it, the Change or Remove Programs page is available to all users.
# 
# This setting does not prevent users from using other tools and methods to delete or uninstall programs.
Hide Change or Remove Programs page:
  lgpo.set:
  - name: NoRemovePage
  - setting: Enabled
  - policy_class: User
