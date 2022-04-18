# SUPPORTED_IE7
#
# This policy setting enables intranet mapping rules to be applied automatically if the computer belongs to a domain.
# 
# If you enable this policy setting, automatic detection of the intranet is turned on, and intranet mapping rules are applied automatically if the computer belongs to a domain.
# 
# If you disable this policy setting, automatic detection of the intranet is turned off, and intranet mapping rules are applied however they are configured.
# 
# If this policy setting is not configured, the user can choose whether or not to automatically detect the intranet through the intranet settings dialog in Control Panel.
Turn on automatic detection of intranet:
  lgpo.set:
  - name: SecurityPage_AutoDetect
  - setting: Enabled
  - policy_class: Machine
