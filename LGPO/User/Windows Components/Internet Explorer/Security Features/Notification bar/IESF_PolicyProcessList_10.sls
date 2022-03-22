# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether the Notification bar is displayed for specific processes when file or code installs are restricted. By default, the Notification bar is not displayed for any process when file or code installs are restricted (except for the Internet Explorer Processes, for which the Notification bar is displayed by default).
# 
# If you enable this policy setting and enter a Value of 1, the Notification bar is displayed. If you enter a Value of 0 the Notification bar is not displayed. The Value Name is the name of the executable. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter the Internet Explorer processes in this list: use the related Internet Explorer Processes policy to enable or disable for IE processes. If the All Processes policy setting is enabled, the processes configured in this box take precedence over that setting.
# 
#  If you disable or do not configure this policy setting, the Notification bar is not displayed for the specified processes.
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_10
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: User
