# windows:SUPPORTED_Win2k
#
# Disables the Windows registry editor Regedit.exe.
# 
# If you enable this policy setting and the user tries to start Regedit.exe, a message appears explaining that a policy setting prevents the action.
# 
# If you disable this policy setting or do not configure it, users can run Regedit.exe normally.
# 
# To prevent users from using other administrative tools, use the "Run only specified Windows applications" policy setting.
Prevent access to registry editing tools:
  lgpo.set:
  - name: DisableRegedit
  - setting:
      DisableRegeditMode: enum-placeholder
  - policy_class: User
