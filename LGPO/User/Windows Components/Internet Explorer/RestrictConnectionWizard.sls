# SUPPORTED_IE5
#
# Prevents users from running the Internet Connection Wizard.
# 
# If you enable this policy, the Setup button on the Connections tab in the Internet Options dialog box appears dimmed.
# 
# Users will also be prevented from running the wizard by clicking the Connect to the Internet icon on the desktop or by clicking Start, pointing to Programs, pointing to Accessories, pointing to Communications, and then clicking Internet Connection Wizard.
# 
# If you disable this policy or do not configure it, users can change their connection settings by running the Internet Connection Wizard.
# 
# Note: This policy overlaps with the "Disable the Connections page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Connections tab from the interface. Removing the Connections tab from the interface, however, does not prevent users from running the Internet Connection Wizard from the desktop or the Start menu.
Disable Internet Connection wizard:
  lgpo.set:
  - name: RestrictConnectionWizard
  - setting: Enabled
  - policy_class: User
