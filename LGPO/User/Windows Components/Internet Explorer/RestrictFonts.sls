# SUPPORTED_IE5
#
# Prevents users from changing font settings.
# 
# If you enable this policy, users will not be able to change font settings for viewing Web pages. All font settings visible after pressing the "Fonts" button on the General Tab in the Internet Options dialog box will be disabled.
# 
# If you disable this policy or do not configure it, users can change the default fonts for viewing Web pages.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
# 
# Note: The default font settings colors are ignored in cases in which the Web page author has specified the font attributes.
Disable changing font settings:
  lgpo.set:
  - name: RestrictFonts
  - setting: Enabled
  - policy_class: User
