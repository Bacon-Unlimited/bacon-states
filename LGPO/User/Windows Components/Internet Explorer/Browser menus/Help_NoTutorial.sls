# SUPPORTED_IE7
#
# Prevents users from running the Internet Explorer Tour from the Help menu in Internet Explorer.
# 
# If you enable this policy, the Tour command is removed from the Help menu.
# 
# If you disable this policy or do not configure it, users can run the tour from the Help menu.
'Help menu: Remove ''Tour'' menu option':
  lgpo.set:
  - name: Help_NoTutorial
  - setting: Enabled
  - policy_class: User
