# SUPPORTED_IE8
#
# This policy setting allows you to specify what is displayed when the user opens a new tab.
# 
# If you enable this policy setting, you can choose which page to display when the user opens a new tab: blank page (about:blank), the first home page, the new tab page or the new tab page with my news feed.
# 
# If you disable or do not configure this policy setting, the user can select his or her preference for this behavior.
Specify default behavior for a new tab:
  lgpo.set:
  - name: NewTabAction
  - setting:
      NewTabActionOptions: enum-placeholder
  - policy_class: User
