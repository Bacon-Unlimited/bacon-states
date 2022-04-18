# SUPPORTED_IE5
#
# Prevents users from changing language preference settings.
# 
# If you enable this policy, users will not be able to set language preferences to read websites. Language preference settings visible after pressing the "Languages" button on the General Tab in the Internet Options dialog box will be disabled.
# 
# If you disable this policy or do not configure it, users can change the language preference settings for viewing Web sites for languages in which the character set has been installed.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
Disable changing language settings:
  lgpo.set:
  - name: RestrictLanguages
  - setting: Enabled
  - policy_class: User
