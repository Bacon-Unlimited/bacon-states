# windows:SUPPORTED_Windows_10_0
#
# This policy setting enables process mitigation options on svchost.exe processes.
# 
# If you enable this policy setting, built-in system services hosted in svchost.exe processes will have stricter security policies enabled on them.
# 
# This includes a policy requiring all binaries loaded in these processes to be signed by microsoft, as well as a policy disallowing dynamically-generated code.
# 
# If you disable or do not configure this policy setting, these stricter security settings will not be applied.
Enable svchost.exe mitigation options:
  lgpo.set:
  - name: SvchostProcessMitigationEnable
  - setting: Enabled
  - policy_class: Machine
