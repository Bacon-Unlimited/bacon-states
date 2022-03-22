# windows:SUPPORTED_WindowsXP
#
# This setting affects the taskbar buttons used to switch between running programs.
# 
# Taskbar grouping consolidates similar applications when there is no room on the taskbar. It kicks in when the user's taskbar is full.
# 
# If you enable this setting, it prevents the taskbar from grouping items that share the same program name. By default, this setting is always enabled.
# 
# If you disable or do not configure it, items on the taskbar that share the same program are grouped together. The users have the option to disable grouping if they choose.
Prevent grouping of taskbar items:
  lgpo.set:
  - name: NoTaskGrouping
  - setting: Enabled
  - policy_class: User
