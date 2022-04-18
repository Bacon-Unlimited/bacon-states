# SUPPORTED_IE9
#
# This policy setting allows you to manage whether users can pin sites to locations where pinning is allowed, such as the taskbar, the desktop, or File Explorer.
# 
# If you enable this policy setting, users cannot pin sites.
# 
# If you disable or do not configure this policy setting, users can pin sites.
Turn off ability to pin sites in Internet Explorer on the desktop:
  lgpo.set:
  - name: TurnOffPinnedSites
  - setting: Enabled
  - policy_class: User
