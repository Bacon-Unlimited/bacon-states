# SUPPORTED_INTERNET_BROWSER_RS5
#
# You can set the default New Tab page URL in Microsoft Edge.  Enabling this policy prevents your users from changing the New tab page setting. When enabled and the Allow web content on New Tab page policy is disabled, Microsoft Edge ignores the URL specified in this policy and opens about:blank.
# 
# If enabled, you can set the default New Tab page URL.
# 
# If disabled or not configured, the default Microsoft Edge new tab page is used.
# 
# Default setting:  Disabled or not configured
# Related policy: Allow web content on New Tab page
Set New Tab page URL:
  lgpo.set:
  - name: SetNewTabPageURL
  - setting:
      SetNewTabPageURLPrompt: text-placeholder
  - policy_class: Machine
