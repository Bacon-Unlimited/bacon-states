# windows:SUPPORTED_Windows8
#
# This policy setting prevents Windows from keeping track of the apps that are used and searched most frequently. If you enable this policy setting, apps will be sorted alphabetically in:
#       - search results
#       - the Search and Share panes
#       - the drop-down app list in the Picker
# 
#       If you disable or don't configure this policy setting, Windows will keep track of the apps that are used and searched most frequently. Most frequently used apps will appear at the top.
Turn off tracking of app usage:
  lgpo.set:
  - name: DisableMFUTracking
  - setting: Enabled
  - policy_class: User
