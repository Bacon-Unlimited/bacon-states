# SUPPORTED_IE5_6
#
# Prevents users from restoring default settings for home and search pages.
# 
# If you enable this policy, the Reset Web Settings button on the Programs tab in the Internet Options dialog box appears dimmed.
# 
# If you disable this policy or do not configure it, users can restore the default settings for home and search pages.
# 
# The "Disable the Programs page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Programs tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
Disable the Reset Web Settings feature:
  lgpo.set:
  - name: RestrictResetWebSettings
  - setting: Enabled
  - policy_class: User
