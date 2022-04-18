# windows:SUPPORTED_Windows_6_3_NOARM
#
# This setting lets you configure how domain joined computers become registered as devices.
# 
# When you enable this setting, domain joined computers automatically and silently get registered as devices with Azure Active Directory.
# 
# Note: Additional requirements may apply on certain Windows SKUs. Refer to Azure Active Directory Device Registration Overview.
# 
# http://go.microsoft.com/fwlink/?LinkId=307136
# 
Register domain joined computers as devices:
  lgpo.set:
  - name: WJ_AutoJoin
  - setting: Enabled
  - policy_class: Machine
