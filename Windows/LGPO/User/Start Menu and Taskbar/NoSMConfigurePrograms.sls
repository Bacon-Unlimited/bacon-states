# windows:SUPPORTED_Windows_6_3ToXPSP1_Or_Win2kSP3
#
# This policy setting allows you to remove the Default Programs link from the Start menu.
# 
# If you enable this policy setting, the Default Programs link is removed from the Start menu.
# 
# Clicking the Default Programs link from the Start menu opens the Default Programs control panel and provides administrators the ability to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.
# 
# If you disable or do not configure this policy setting, the Default Programs link is available from the Start menu.
# 
# Note: This policy setting does not prevent the Set Default Programs for This Computer option from appearing in the Default Programs control panel.
Remove Default Programs link from the Start menu.:
  lgpo.set:
  - name: NoSMConfigurePrograms
  - setting: Enabled
  - policy_class: User
