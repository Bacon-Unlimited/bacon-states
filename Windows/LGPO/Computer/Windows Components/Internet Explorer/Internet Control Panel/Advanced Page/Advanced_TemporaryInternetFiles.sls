# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer deletes the contents of the Temporary Internet Files folder after all browser windows are closed. This protects against storing dangerous files on the computer, or storing sensitive files that other users could see, in addition to managing total disk space usage.
# 
# If you enable this policy setting, Internet Explorer will delete the contents of the user's Temporary Internet Files folder when all browser windows are closed.
# 
# If you disable this policy setting, Internet Explorer will not delete the contents of the user's Temporary Internet Files folder when browser windows are closed.
# 
# If you do not configure this policy, Internet Explorer will not delete the contents of the Temporary Internet Files folder when browser windows are closed.
Empty Temporary Internet Files folder when browser is closed:
  lgpo.set:
  - name: Advanced_TemporaryInternetFiles
  - setting: Enabled
  - policy_class: Machine
