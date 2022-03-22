# SUPPORTED_IE8
#
# This policy setting allows you to manage whether Internet Explorer uses HTTP 1.1.
# 
# If you enable this policy setting, Internet Explorer uses HTTP 1.1.
# 
# If you disable this policy setting, Internet Explorer does not use HTTP 1.1.
# 
# If you do not configure this policy setting, users can configure Internet Explorer to use or not use HTTP 1.1.
Use HTTP 1.1:
  lgpo.set:
  - name: Advanced_EnableHttp1_1
  - setting: Enabled
  - policy_class: User
