# windows:SUPPORTED_Windows7ToVista
#
# Makes pen flicks learning mode unavailable.
# 
# If you enable this policy, pen flicks are still available but learning mode is not. Pen flicks are off by default and can be turned on system-wide, but cannot be restricted to learning mode applications. This means that the pen flicks training triggers in Internet Explorer are disabled and that the pen flicks notification will never be displayed. However, pen flicks, the pen flicks tray icon and pen flicks training (that can be accessed through CPL) are still available.  Conceptually this policy is a subset of the Disable pen flicks policy.
# 
# If you disable or do not configure this policy, all the features described above will be available.
Prevent Flicks Learning Mode:
  lgpo.set:
  - name: PreventFlicksLearningMode_2
  - setting: Enabled
  - policy_class: Machine
