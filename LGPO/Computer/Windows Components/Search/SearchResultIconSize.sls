# RedistOnly
#
# Enabling this policy allows you to specify whether you want large icon or small icon view for your Desktop Search results. The two options are:
# 
# - Large Icon
# - Small Icon.
# 
# If you have disabled the preview pane because your organization does not support Office XP or above, you should enforce the large icon view so that users can see snippets related to their desktop search query.
# 
# When this policy is disabled or not configured, the default is small icon view.
Set large or small icon view in desktop search results:
  lgpo.set:
  - name: SearchResultIconSize
  - setting:
      SearchResultIconSize: enum-placeholder
  - policy_class: Machine
