# SUPPORTED_IE11
#
# This policy lets you restrict launching of Internet Explorer as a standalone browser.
# 
# If you enable this policy, it:
# - Prevents Internet Explorer 11 from launching as a standalone browser.
# - Restricts Internet Explorer's usage to Microsoft Edge's native 'Internet Explorer mode'.
# - Redirects all attempts at launching Internet Explorer 11 to Microsoft Edge Stable Channel browser.
# - Overrides any other policies that redirect to Internet Explorer 11.
# 
# If you disable, or dont configure this policy, all sites are opened using the current active browser settings. Note: Microsoft Edge Stable Channel must be installed for this policy to take effect.
Disable Internet Explorer 11 as a standalone browser:
  lgpo.set:
  - name: DisableInternetExplorerApp
  - setting:
      NotifyDisableIEOptions: enum-placeholder
  - policy_class: User
