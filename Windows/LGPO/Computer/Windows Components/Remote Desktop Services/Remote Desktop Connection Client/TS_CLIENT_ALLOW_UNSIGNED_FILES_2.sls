# TS_SUPPORTED_Vista_SP1
#
# This policy setting allows you to specify whether users can run unsigned Remote Desktop Protocol (.rdp) files and .rdp files from unknown publishers on the client computer.
# 
# If you enable or do not configure this policy setting, users can run unsigned .rdp files and .rdp files from unknown publishers on the client computer. Before a user starts an RDP session, the user receives a warning message and is asked to confirm whether they want to connect.
# 
# If you disable this policy setting, users cannot run unsigned .rdp files and .rdp files from unknown publishers on the client computer. If the user tries to start an RDP session, the user receives a message that the publisher has been blocked.
# 
Allow .rdp files from unknown publishers:
  lgpo.set:
  - name: TS_CLIENT_ALLOW_UNSIGNED_FILES_2
  - setting: Enabled
  - policy_class: Machine
