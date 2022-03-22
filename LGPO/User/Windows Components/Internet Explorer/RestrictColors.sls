# SUPPORTED_IE5
#
# Prevents users from changing the default Web page colors.
# 
# If you enable this policy, the color settings for Web pages appear dimmed. The settings are located in the Colors area in the dialog box that appears when the user clicks the General tab and then clicks the Colors button in the Internet Options dialog box.
# 
# If you disable this policy or do not configure it, users can change the default background and text color of Web pages.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
# 
# Note: The default Web page colors are ignored on Web pages in which the author has specified the background and text colors.
Disable changing color settings:
  lgpo.set:
  - name: RestrictColors
  - setting: Enabled
  - policy_class: User
