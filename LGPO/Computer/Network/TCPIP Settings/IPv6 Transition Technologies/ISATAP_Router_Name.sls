# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify a router name or Internet Protocol version 4 (IPv4) address for an ISATAP router.
# 
# If you enable this policy setting, you can specify a router name or IPv4 address for an ISATAP router. If you enter an IPv4 address of the ISATAP router in the text box, DNS services are not required.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# 
Set ISATAP Router Name:
  lgpo.set:
  - name: ISATAP_Router_Name
  - setting:
      RouterNameBox: text-placeholder
  - policy_class: Machine
