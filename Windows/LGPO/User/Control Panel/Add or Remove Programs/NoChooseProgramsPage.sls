# windows:SUPPORTED_WindowsPreVista
#
# Removes the Set Program Access and Defaults button from the Add or Remove Programs bar.  As a result, users cannot view or change the associated page.
# 
# The Set Program Access and Defaults button lets administrators specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.
# 
# If you disable this setting or do not configure it, the Set Program Access and Defaults button is available to all users.
# 
# This setting does not prevent users from using other tools and methods to change program access or defaults.
# 
# This setting does not prevent the Set Program Access and Defaults icon from appearing on the Start menu.  See the "Remove Set Program Access and Defaults from Start menu" setting.
Hide the Set Program Access and Defaults page:
  lgpo.set:
  - name: NoChooseProgramsPage
  - setting: Enabled
  - policy_class: User
