# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the maximum display resolution that can be used by each monitor used to display a Remote Desktop Services session. Limiting the resolution used to display a remote session can improve connection performance, particularly over slow links, and reduce server load.
# 
# If you enable this policy setting, you must specify a resolution width and height. The resolution specified will be the maximum resolution that can be used by each monitor used to display a Remote Desktop Services session.
# 
# If you disable or do not configure this policy setting, the maximum resolution that can be used by each monitor to display a Remote Desktop Services session will be determined by the values specified on the Display Settings tab in the Remote Desktop Session Host Configuration tool.
# 
Limit maximum display resolution:
  lgpo.set:
  - name: TS_MAXDISPLAYRES
  - setting:
      TS_DisplayRes_Height: decimal-placeholder
      TS_DisplayRes_Width: decimal-placeholder
  - policy_class: Machine
