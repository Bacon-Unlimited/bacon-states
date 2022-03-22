# windows:SUPPORTED_Windows8
#
# This policy setting lets you control whether Windows Store apps can open files using the default desktop app for a file type. Because desktop apps run at a higher integrity level than Windows Store apps, there is a risk that a Windows Store app might compromise the system by opening a file in the default desktop app for a file type.
# 
# If you enable this policy setting, Windows Store apps cannot open files in the default desktop app for a file type; they can open files only in other Windows Store apps.
# 
# If you disable or do not configure this policy setting, Windows Store apps can open files in the default desktop app for a file type.
Block launching desktop apps associated with a file.:
  lgpo.set:
  - name: AppxRuntimeBlockFileElevation
  - setting: Enabled
  - policy_class: User
