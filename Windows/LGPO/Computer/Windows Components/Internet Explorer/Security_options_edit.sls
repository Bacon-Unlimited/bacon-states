# SUPPORTED_IE5
#
# Prevents users from changing security zone settings. A security zone is a group of Web sites with the same security level.
# 
# If you enable this policy, the Custom Level button and security-level slider on the Security tab in the Internet Options dialog box are disabled.
# 
# If you disable this policy or do not configure it, users can change the settings for security zones.
# 
# This policy prevents users from changing security zone settings established by the administrator.
# 
# Note: The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
# 
# Also, see the "Security zones: Use only machine settings" policy.
'Security Zones: Do not allow users to change policies':
  lgpo.set:
  - name: Security_options_edit
  - setting: Enabled
  - policy_class: Machine
