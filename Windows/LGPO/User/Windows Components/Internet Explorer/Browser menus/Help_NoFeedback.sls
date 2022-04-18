# SUPPORTED_IE5
#
# Prevents users from sending feedback to Microsoft by clicking the Send Feedback command on the Help menu.
# 
# If you enable this policy, the Send Feedback command is removed from the Help menu.
# 
# If you disable this policy or do not configure it, users can fill out an Internet form to provide feedback about Microsoft products.
'Help menu: Remove ''Send Feedback'' menu option':
  lgpo.set:
  - name: Help_NoFeedback
  - setting: Enabled
  - policy_class: User
