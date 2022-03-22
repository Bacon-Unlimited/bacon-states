# SUPPORTED_IE7
#
# This policy setting specifies whether to use 8-bit Unicode Transformation Format (UTF-8), a standard that defines characters so they are readable in any language. By using UTF-8, you can exchange Internet addresses (URLs) that contain characters from any language.
# 
# If you enable this policy setting, Internet Explorer does not allow sending the path portion of URLs as UTF-8. The user cannot change this policy setting.
# 
# If you disable this policy setting, Internet Explorer allows sending the path portion of URLs as UTF-8. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can allow or prevent the sending of the path portion of URLs as UTF-8.
Turn off sending URL path as UTF-8:
  lgpo.set:
  - name: UTF8
  - setting: Enabled
  - policy_class: User
