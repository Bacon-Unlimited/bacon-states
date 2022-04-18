# SUPPORTED_IE5_6
#
# Prevents users from displaying tips for users who are switching from Netscape.
# 
# If you enable this policy, the For Netscape Users command is removed from the Help menu.
# 
# If you disable this policy or do not configure it, users can display content about switching from Netscape by clicking the For Netscape Users command on the Help menu.
# 
# Caution: Enabling this policy does not remove the tips for Netscape users from the Microsoft Internet Explorer Help file.
'Help menu: Remove ''For Netscape Users'' menu option':
  lgpo.set:
  - name: Help_NoNetscapeHelp
  - setting: Enabled
  - policy_class: User
