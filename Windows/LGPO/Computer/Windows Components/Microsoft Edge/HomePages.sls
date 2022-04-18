# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# When you enable the Configure Open Microsoft Edge With policy, you can configure one or more Start pages. When you enable this policy, users are not allowed to make changes to their Start pages.
# 
# If enabled, you must include URLs to the pages, separating multiple pages using angle brackets in the following format:
# 
#       <support.contoso.com><support.microsoft.com>
# 
# If disabled or not configured, the webpages specified in App settings loads as the default Start pages.
# 
# Version 1703 or later:
# If you do not want to send traffic to Microsoft, enable this policy and use the <about:blank> value, which honors domain- and non-domain-joined devices, when it is the only configured URL.
# 
# Version 1809:
# If enabled, and you select either Start page, New Tab page, or previous page in the Configure Open Microsoft Edge With policy, Microsoft Edge ignores the Configure Start Pages policy. If not configured or you set the Configure Open Microsoft Edge With policy to a specific page or pages, Microsoft Edge uses the Configure Start Pages policy.
# 
# Supported devices: Domain-joined or MDM-enrolled
# Related policy:
# - Configure Open Microsoft Edge With
# - Disable Lockdown of Start Pages
Configure Start pages:
  lgpo.set:
  - name: HomePages
  - setting:
      HomePagesPrompt: text-placeholder
  - policy_class: Machine
