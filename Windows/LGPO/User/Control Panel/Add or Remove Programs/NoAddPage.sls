# windows:SUPPORTED_WindowsPreVista
#
# Removes the Add New Programs button from the Add or Remove Programs bar. As a result, users cannot view or change the attached page.
# 
# The Add New Programs button lets users install programs published or assigned by a system administrator.
# 
# If you disable this setting or do not configure it, the Add New Programs button is available to all users.
# 
# This setting does not prevent users from using other tools and methods to install programs.
Hide Add New Programs page:
  lgpo.set:
  - name: NoAddPage
  - setting: Enabled
  - policy_class: User
