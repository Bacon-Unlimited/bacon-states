# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying a URL that contains update information about cipher strength. When the user logs on to a secure page, the page cannot grant access unless the Internet browser connects with a prespecified encryption. To ensure that the browser meets this requirement, this policy setting allows you to specify the URL to update the browser security setting.
# 
# If you enable this policy setting, the user cannot specify the cipher strength update information URL. You must specify the cipher strength update information URL.
# 
# If you disable or do not configure this policy setting, the user can specify the cipher strength update information URL.
Prevent specifying cipher strength update information URLs:
  lgpo.set:
  - name: HelpAbout128Pol
  - setting:
      HelpAbout128Link: text-placeholder
  - policy_class: Machine
