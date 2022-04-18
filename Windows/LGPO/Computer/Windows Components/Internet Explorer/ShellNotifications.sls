# SUPPORTED_IE5_6
#
# Specifies that programs using the Microsoft Software Distribution Channel will not notify users when they install new components. The Software Distribution Channel is a means of updating software dynamically on users' computers by using Open Software Distribution (.osd) technologies.
# 
# If you enable this policy, users will not be notified if their programs are updated using Software Distribution Channels.
# 
# If you disable this policy or do not configure it, users will be notified before their programs are updated.
# 
# This policy is intended for administrators who want to use Software Distribution Channels to update their users' programs without user intervention.
Disable software update shell notifications on program launch:
  lgpo.set:
  - name: ShellNotifications
  - setting: Enabled
  - policy_class: Machine
