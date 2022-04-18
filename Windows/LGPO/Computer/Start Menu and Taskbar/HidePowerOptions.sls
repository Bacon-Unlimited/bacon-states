# windows:SUPPORTED_Windows_10_0
#
# This policy setting prevents users from performing the following commands from the Windows security screen, the logon screen, and the Start menu: Shut Down, Restart, Sleep, and Hibernate. This policy setting does not prevent users from running Windows-based programs that perform these functions.
# 
# If you enable this policy setting, the shutdown, restart, sleep, and hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE, and from the logon screen.
# 
# If you disable or do not configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security and logon screens is also available.
Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands:
  lgpo.set:
  - name: HidePowerOptions
  - setting: Enabled
  - policy_class: Machine
