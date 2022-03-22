# windows:SUPPORTED_WindowsPreVista
#
# Removes the Add/Remove Windows Components button from the Add or Remove Programs bar. As a result, users cannot view or change the associated page.
# 
# The Add/Remove Windows Components button lets users configure installed services and use the Windows Component Wizard to add, remove, and configure components of Windows from the installation files.
# 
# If you disable this setting or do not configure it, the Add/Remove Windows Components button is available to all users.
# 
# This setting does not prevent users from using other tools and methods to configure services or add or remove program components. However, this setting blocks user access to the Windows Component Wizard.
Hide Add/Remove Windows Components page:
  lgpo.set:
  - name: NoWindowsSetupPage
  - setting: Enabled
  - policy_class: User
