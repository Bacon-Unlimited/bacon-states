# windows:SUPPORTED_WindowsXPOrServerOnly
#
# Prevents users from using the Desktop Cleanup Wizard.
# 
# If you enable this setting, the Desktop Cleanup wizard does not automatically run on a users workstation every 60 days. The user will also not be able to access the Desktop Cleanup Wizard.
# 
# If you disable this setting or do not configure it, the default behavior of the Desktop Clean Wizard running every 60 days occurs.
# 
# Note: When this setting is not enabled, users can run the Desktop Cleanup Wizard, or have it run automatically every 60 days from Display, by clicking the Desktop tab and then clicking the Customize Desktop button.
Remove the Desktop Cleanup Wizard:
  lgpo.set:
  - name: NoDesktopCleanupWizard
  - setting: Enabled
  - policy_class: User
