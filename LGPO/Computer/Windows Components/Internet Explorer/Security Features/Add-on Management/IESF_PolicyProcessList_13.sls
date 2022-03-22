# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether the listed processes respect add-on management user preferences (as entered into Add-on Manager) or policy settings. By default, only Internet Explorer processes use the add-on management user preferences and policy settings. This policy setting allows you to extend support for these user preferences and policy settings to specific processes listed in the process list.
# 
# If you enable this policy setting and enter a Value of 1, the process entered will respect the add-on management user preferences and policy settings. If you enter a Value of 0, the add-on management user preferences and policy settings are ignored by the specified process. The Value Name is the name of the executable. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter Internet Explorer processes in this list because these processes always respect add-on management user preferences and policy settings. If the All Processes policy setting is enabled, the processes configured in this policy setting take precedence over that setting.
# 
# If you do not configure this policy, processes other than the Internet Explorer processes will not be affected by add-on management user preferences or policy settings (unless "All Processes" is enabled).
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_13
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
