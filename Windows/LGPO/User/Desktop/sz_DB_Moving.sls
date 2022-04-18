# windows:SUPPORTED_Win2k
#
# Prevents users from adjusting the length of desktop toolbars. Also, users cannot reposition items or toolbars on docked toolbars.
# 
# This setting does not prevent users from adding or removing toolbars on the desktop.
# 
# Note: If users have adjusted their toolbars, this setting prevents them from restoring the default configuration.
# 
# Also, see the "Prevent adding, dragging, dropping and closing the Taskbar's toolbars" setting.
Prohibit adjusting desktop toolbars:
  lgpo.set:
  - name: sz_DB_Moving
  - setting: Enabled
  - policy_class: User
