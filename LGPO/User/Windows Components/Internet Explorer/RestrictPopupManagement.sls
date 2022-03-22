# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage pop-up management functionality in Internet Explorer.
# 
# If you enable this policy setting, the Control Panel information relating to pop-up management will be unavailable (grayed out) and all other pop-up manager controls, notifications, and dialog boxes will not appear. Pop-up windows will continue to function as they did in Windows XP Service Pack 1 or earlier, although windows launched off screen will continue to be re-positioned onscreen.
# 
# If you disable or do not configure this policy setting, the popup management feature will be functional.
Turn off pop-up management:
  lgpo.set:
  - name: RestrictPopupManagement
  - setting: Enabled
  - policy_class: User
