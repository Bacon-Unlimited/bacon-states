# SUPPORTED_IE5_6
#
# Prevents users from viewing or changing the Tip of the Day interface in Microsoft Internet Explorer.
# 
# If you enable this policy, the Tip of the Day command is removed from the Help menu.
# 
# If you disable this policy or do not configure it, users can enable or disable the Tip of the Day, which appears at the bottom of the browser.
'Help menu: Remove ''Tip of the Day'' menu option':
  lgpo.set:
  - name: Help_NoTip
  - setting: Enabled
  - policy_class: User
