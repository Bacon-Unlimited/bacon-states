# SUPPORTED_IE5_9
#
# Prevents Microsoft Internet Explorer from checking to see whether it is the default browser.
# 
# If you enable this policy, the Internet Explorer Should Check to See Whether It Is the Default Browser check box on the Programs tab in the Internet Options dialog box appears dimmed.
# 
# If you disable this policy or do not configure it, users can determine whether Internet Explorer will check to see if it is the default browser. When Internet Explorer performs this check, it prompts the user to specify which browser to use as the default.
# 
# This policy is intended for organizations that do not want users to determine which browser should be their default.
# 
# The "Disable the Programs page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Programs tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
Disable changing default browser check:
  lgpo.set:
  - name: RestrictCheckBrowser
  - setting: Enabled
  - policy_class: User
