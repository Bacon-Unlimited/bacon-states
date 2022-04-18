# SUPPORTED_IE7
#
# This policy setting prevents the text on the screen from being rendered through the ClearType technology that enhances the readability of text on LCD displays.
# 
# If you enable this policy setting, applications that host MSHTML do not render text by using the Microsoft ClearType rendering engine.
# 
# If you disable or do not configure this policy setting, applications that host MSHTML render text by using the Microsoft ClearType rendering engine.
Turn off ClearType:
  lgpo.set:
  - name: Advanced_DisableClearType
  - setting: Enabled
  - policy_class: User
