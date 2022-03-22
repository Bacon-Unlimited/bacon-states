# SUPPORTED_IE7
#
# This policy setting allows Internet Explorer to be started automatically to complete the signup process after the branding is complete for Internet service providers (ISPs) through the Internet Explorer Administration Kit (IEAK).
# 
# If you enable this policy setting, Internet Explorer is started automatically to complete the signup process after the branding is complete for ISPs (IEAK). The user cannot change this behavior.
# 
# If you disable this policy setting, Internet Explorer is not started automatically to complete the signup process after the branding is complete for ISPs (IEAK). The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to start Internet Explorer automatically to complete the signup process after the branding is complete for ISPs (IEAK).
Turn on automatic signup:
  lgpo.set:
  - name: NoAutomaticSignup
  - setting: Enabled
  - policy_class: User
