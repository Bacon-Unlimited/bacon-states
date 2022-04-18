# windows:SUPPORTED_Windows7ToVista
#
# Makes pen flicks and all related features unavailable.
# 
# If you enable this policy, pen flicks and all related features are unavailable. This includes: pen flicks themselves, pen flicks training, pen flicks training triggers in Internet Explorer, the pen flicks notification and the pen flicks tray icon.
# 
# If you disable or do not configure this policy, pen flicks and related features are available.
Prevent flicks:
  lgpo.set:
  - name: PreventFlicks_2
  - setting: Enabled
  - policy_class: Machine
