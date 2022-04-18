# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This setting lets you decide whether people can sync their favorites between Internet Explorer and Microsoft Edge.
# 
# If you enable this setting, employees can sync their favorites between Internet Explorer and Microsoft Edge.
# 
# If you disable or don't configure this setting, employees cant sync their favorites between Internet Explorer and Microsoft Edge.
#       
Keep favorites in sync between Internet Explorer and Microsoft Edge:
  lgpo.set:
  - name: SyncFavoritesBetweenIEAndMicrosoftEdge
  - setting: Enabled
  - policy_class: Machine
