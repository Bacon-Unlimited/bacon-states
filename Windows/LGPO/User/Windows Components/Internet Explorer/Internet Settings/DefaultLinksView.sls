# SUPPORTED_IE10WIN8
#
# This policy setting allows you to choose how links are opened in Internet Explorer: Let Internet Explorer decide, always in Internet Explorer, or always in Internet Explorer on the desktop.
# 
# If you enable this policy setting, Internet Explorer enforces your choice. Users cannot change the setting.
# 
# If you disable or do not configure this policy setting, users can choose how links are opened in Internet Explorer.
Set how links are opened in Internet Explorer:
  lgpo.set:
  - name: DefaultLinksView
  - setting:
      DefaultViewOptions: enum-placeholder
  - policy_class: User
