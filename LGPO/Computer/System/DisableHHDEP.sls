# windows:SUPPORTED_Windows7
#
# This policy setting allows you to exclude HTML Help Executable from being monitored by software-enforced Data Execution Prevention.
# 
#           Data Execution Prevention (DEP) is designed to block malicious code that takes advantage of exception-handling mechanisms in Windows by monitoring your programs to make sure that they use system memory safely.
# 
#           If you enable this policy setting, DEP for HTML Help Executable is turned off. This will allow certain legacy ActiveX controls to function without DEP shutting down HTML Help Executable.
# 
#           If you disable or do not configure this policy setting, DEP is turned on for HTML Help Executable. This provides an additional security benefit, but HTLM Help stops if DEP detects system memory abnormalities.
#         
Turn off Data Execution Prevention for HTML Help Executible:
  lgpo.set:
  - name: DisableHHDEP
  - setting: Enabled
  - policy_class: Machine
