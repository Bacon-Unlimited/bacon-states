# SUPPORTED_IE5
#
# Removes the Security tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, it prevents users from seeing and changing settings for security zones, such as scripting, downloads, and user authentication.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
# 
# When you set this policy, you do not need to set the following Internet Explorer policies, because this policy removes the Security tab from the interface:
# 
# "Security zones: Do not allow users to change policies"
# 
# "Security zones: Do not allow users to add/delete sites"
Disable the Security page:
  lgpo.set:
  - name: ControlPanel_RestrictSecurityTab
  - setting: Enabled
  - policy_class: User
