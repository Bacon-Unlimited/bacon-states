# windows:SUPPORTED_WindowsVista
#
# This setting removes the Set Program Access and Defaults page from the Programs Control Panel.  As a result, users cannot view or change the associated page.
# 
# The Set Program Access and Computer Defaults page allows administrators to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as specify the programs that are accessible from the Start menu, desktop, and other locations.
# 
# If this setting is disabled or not configured, the Set Program Access and Defaults button is available to all users.
# 
# This setting does not prevent users from using other tools and methods to change program access or defaults.
# 
# This setting does not prevent the Default Programs icon from appearing on the Start menu.
Hide "Set Program Access and Computer Defaults" page:
  lgpo.set:
  - name: NoDefaultPrograms
  - setting: Enabled
  - policy_class: User
