# SUPPORTED_IE5
#
# Prevents users from changing dial-up settings.
# 
# If you enable this policy, the Settings button on the Connections tab in the Internet Options dialog box appears dimmed.
# 
# If you disable this policy or do not configure it, users can change their settings for dial-up connections.
# 
# If you set the "Disable the Connections page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the Connections page" policy removes the Connections tab from the interface.
Disable changing connection settings:
  lgpo.set:
  - name: RestrictConnectionSettings_1
  - setting: Enabled
  - policy_class: User
