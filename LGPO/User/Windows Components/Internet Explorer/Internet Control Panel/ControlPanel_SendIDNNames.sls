# SUPPORTED_IE7
#
# This policy setting allows you to manage whether Internet Explorer converts Unicode domain names to internationalized domain name (IDN) format (Punycode) before sending them to Domain Name System (DNS) servers or to proxy servers.
# 
# If you enable this policy setting, you must specify when IDN server names should be sent:
#     0) Unicode domain names are never converted to IDN format.
#     1) Unicode domain names are converted to IDN format only for addresses that are not in the Intranet zone.
#     2) Unicode domain names are converted to IDN format only for addresses that are in the Intranet zone.
#     3) Unicode domain names are always converted to IDN format.
# 
# If you disable or do not configure this policy setting, the user can control this setting by using Advanced Options in Internet Control Panel. By default, domain names are converted to IDN format only for addresses that are not in the Intranet zone.
Send internationalized domain names:
  lgpo.set:
  - name: ControlPanel_SendIDNNames
  - setting:
      SelectIDNBehavior: enum-placeholder
  - policy_class: User
