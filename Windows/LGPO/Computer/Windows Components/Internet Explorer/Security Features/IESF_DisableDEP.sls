# SUPPORTED_IE8
#
# This policy setting allows you to turn off the Data Execution Prevention feature for Internet Explorer on Windows Server 2008, Windows Vista with SP1, and Windows XP with SP3.
# 
# If you enable this policy setting, Internet Explorer does not turn on Data Execution Prevention on platforms that support the SetProcessDEPPolicy function.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the SetProcessDEPPolicy function to turn on Data Execution Prevention on platforms that support the function.
# 
# This policy setting has no effect if Windows has been configured to enable Data Execution Prevention.
Turn off Data Execution Prevention:
  lgpo.set:
  - name: IESF_DisableDEP
  - setting: Enabled
  - policy_class: Machine
