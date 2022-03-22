# windows:SUPPORTED_Windows_6_3
#
# 
#         Enter “0” to disable Logon Script Delay.
# 
#         This policy setting allows you to configure how long the Group Policy client waits after logon before running scripts.
# 
#         By default, the Group Policy client waits five minutes before running logon scripts. This helps create a responsive desktop environment by preventing disk contention.
# 
#         If you enable this policy setting, Group Policy will wait for the specified amount of time before running logon scripts.
# 
#         If you disable this policy setting, Group Policy will run scripts immediately after logon.
# 
#         If you do not configure this policy setting, Group Policy will wait five minutes before running logon scripts.
#       
Configure Logon Script Delay:
  lgpo.set:
  - name: LogonScriptDelay
  - setting:
      AsyncScriptDelay1: decimal-placeholder
  - policy_class: Machine
