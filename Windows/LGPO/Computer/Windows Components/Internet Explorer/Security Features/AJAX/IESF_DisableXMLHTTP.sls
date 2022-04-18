# SUPPORTED_IE7
#
# This policy setting allows the user to run natively implemented, scriptable XMLHTTP.
# 
# If you enable this policy setting, the user can run natively implemented, scriptable XMLHTTP.
# 
# If you disable this policy setting, the user cannot run natively implemented, scriptable XMLHTTP.
# 
# If you do not configure this policy setting, the user can choose to run natively implemented, scriptable XMLHTTP.
Allow native XMLHTTP support:
  lgpo.set:
  - name: IESF_DisableXMLHTTP
  - setting: Enabled
  - policy_class: Machine
