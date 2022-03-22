# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the name of the Teredo server. This server name will be used on the Teredo client computer where this policy setting is applied.
# 
# If you enable this policy setting, you can specify a Teredo server name that applies to a Teredo client.
# 
# If you disable or do not configure this policy setting, the local settings on the computer are used to determine the Teredo server name.
# 
# 
Set Teredo Server Name:
  lgpo.set:
  - name: Teredo_Server_Name
  - setting:
      TeredoServerNameBox: text-placeholder
  - policy_class: Machine
