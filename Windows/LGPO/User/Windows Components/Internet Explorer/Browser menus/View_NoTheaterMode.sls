# SUPPORTED_IE5
#
# Prevents users from displaying the browser in full-screen (kiosk) mode, without the standard toolbar.
# 
# If you enable this policy, the Full Screen command on the View menu will appear dimmed, and pressing F11 will not display the browser in a full screen.
# 
# If you disable this policy or do not configure it, users can display the browser in a full screen.
# 
# This policy is intended to prevent users from displaying the browser without toolbars, which might be confusing for some beginning users.
'View menu: Disable Full Screen menu option':
  lgpo.set:
  - name: View_NoTheaterMode
  - setting: Enabled
  - policy_class: User
