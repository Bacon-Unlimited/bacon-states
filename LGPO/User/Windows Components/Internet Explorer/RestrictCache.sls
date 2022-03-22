# SUPPORTED_IE5
#
# Prevents users from changing the browser cache settings, such as the location and amount of disk space to use for the Temporary Internet Files folder.
# 
# If you enable this policy, the browser cache settings appear dimmed. These settings are found in the dialog box that appears when users click the General tab and then click the Settings button in the Internet Options dialog box.
# 
# If you disable this policy or do not configure it, users can change their cache settings.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
Disable changing Temporary Internet files settings:
  lgpo.set:
  - name: RestrictCache
  - setting: Enabled
  - policy_class: User
