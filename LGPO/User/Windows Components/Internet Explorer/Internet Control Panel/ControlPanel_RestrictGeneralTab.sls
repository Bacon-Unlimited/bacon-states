# SUPPORTED_IE5
#
# Removes the General tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, users are unable to see and change settings for the home page, the cache, history, Web page appearance, and accessibility.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
# 
# When you set this policy, you do not need to set the following Internet Explorer policies (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\), because this policy removes the General tab from the interface:
# 
# "Disable changing home page settings"
# 
# "Disable changing Temporary Internet files settings"
# 
# "Disable changing history settings"
# 
# "Disable changing color settings"
# 
# "Disable changing link color settings"
# 
# "Disable changing font settings"
# 
# "Disable changing language settings"
# 
# "Disable changing accessibility settings"
Disable the General page:
  lgpo.set:
  - name: ControlPanel_RestrictGeneralTab
  - setting: Enabled
  - policy_class: User
