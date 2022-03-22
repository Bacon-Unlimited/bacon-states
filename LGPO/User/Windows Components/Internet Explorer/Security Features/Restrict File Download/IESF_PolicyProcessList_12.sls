# SUPPORTED_IE6SP2
#
# This policy setting enables applications hosting the Web Browser Control to block automatic prompting of file downloads that are not user initiated.
# 
# If you enable this policy setting and enter a Value of 1, automatic prompting of non-initiated file downloads is blocked. If you enter a Value of 0, automatic prompting of non-initiated file downloads is allowed. The Value Name is the name of the executable. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter the Internet Explorer processes in this list: use the related Internet Explorer Processes policy to enable or disable IE processes. If the All Processes policy setting is enabled, the processes configured in this box take precedence over that setting.
# 
# If you disable or do not configure this policy setting, the security feature is allowed.
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_12
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: User
