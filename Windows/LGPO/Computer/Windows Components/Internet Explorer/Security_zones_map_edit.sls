# SUPPORTED_IE5
#
# Prevents users from adding or removing sites from security zones. A security zone is a group of Web sites with the same security level.
# 
# If you enable this policy, the site management settings for security zones are disabled. (To see the site management settings for security zones, in the Internet Options dialog box, click the Security tab, and then click the Sites button.)
# 
# If you disable this policy or do not configure it, users can add Web sites to or remove sites from the Trusted Sites and Restricted Sites zones, and alter settings for the Local Intranet zone.
# 
# This policy prevents users from changing site management settings for security zones established by the administrator.
# 
# Note:  The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from the interface, takes precedence over this policy. If it is enabled, this policy is ignored.
# 
# Also, see the "Security zones: Use only machine settings" policy.
'Security Zones: Do not allow users to add/delete sites':
  lgpo.set:
  - name: Security_zones_map_edit
  - setting: Enabled
  - policy_class: Machine
