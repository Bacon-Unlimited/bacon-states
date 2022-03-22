# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure definition retirement for network protection against exploits of known vulnerabilities. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system is not vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocal are retired then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that is up-to-date with all the latest security updates, network protection will have no impact on network performance.
# 
#     If you enable or do not configure this setting, definition retirement will be enabled.
# 
#     If you disable this setting, definition retirement will be disabled.
Turn on definition retirement:
  lgpo.set:
  - name: Nis_Consumers_IPS_DisableSignatureRetirement
  - setting: Enabled
  - policy_class: Machine
