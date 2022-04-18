# SUPPORTED_IE5
#
# Prevents users from changing the colors of links on Web pages.
# 
# If you enable this policy, the color settings for links appear dimmed. The settings are located in the Links area of the dialog box that appears when users click the General tab and then click the Colors button in the Internet Options dialog box.
# 
# If you disable this policy or do not configure it, users can change the default color of links on Web pages.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
# 
# Note: The default link colors are ignored on Web pages on which the author has specified link colors.
Disable changing link color settings:
  lgpo.set:
  - name: RestrictLinks
  - setting: Enabled
  - policy_class: User
