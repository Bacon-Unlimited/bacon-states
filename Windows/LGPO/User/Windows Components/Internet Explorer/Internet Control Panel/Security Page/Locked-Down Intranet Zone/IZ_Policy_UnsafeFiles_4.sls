# SUPPORTED_IE7
#
# This policy setting controls whether or not the "Open File - Security Warning" message appears when the user tries to open executable files or other potentially unsafe files (from an intranet file share by using File Explorer, for example).
# 
# If you enable this policy setting and set the drop-down box to Enable, these files open without a security warning. If you set the drop-down box to Prompt, a security warning appears before the files open.
# 
# If you disable this policy setting, these files do not open.
# 
# If you do not configure this policy setting, the user can configure how the computer handles these files. By default, these files are blocked in the Restricted zone, enabled in the Intranet and Local Computer zones, and set to prompt in the Internet and Trusted zones.
Show security warning for potentially unsafe files:
  lgpo.set:
  - name: IZ_Policy_UnsafeFiles_4
  - setting:
      IZ_Partname1806: enum-placeholder
  - policy_class: User
