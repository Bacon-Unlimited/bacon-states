# SUPPORTED_IE7
#
# This policy setting prevents the user from changing the default URL for checking updates to Internet Explorer and Internet Tools.
# 
# If you enable this policy setting, the user cannot change the URL that is displayed for checking updates to Internet Explorer and Internet Tools. You must specify this URL.
# 
# If you disable or do not configure this policy setting, the user can change the URL that is displayed for checking updates to Internet Explorer and Internet Tools.
Prevent changing the URL for checking updates to Internet Explorer and Internet Tools:
  lgpo.set:
  - name: UpdatePagePol
  - setting:
      UpdatePage: text-placeholder
  - policy_class: Machine
