# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the color of webpage links that he or she has not yet clicked. Appropriate color choices can make links easier to see for some users, especially those who use high-contrast color schemes.
# 
# If you enable this policy setting, the user cannot specify the color of links not yet clicked in Internet Explorer. You must specify the link color (for example: 192,192,192).
# 
# If you disable or do not configure this policy setting, the user can specify the color of links not yet clicked.
Prevent specifying the color of links that have not yet been clicked:
  lgpo.set:
  - name: LinkColorPol
  - setting:
      LinkColor: text-placeholder
  - policy_class: User
