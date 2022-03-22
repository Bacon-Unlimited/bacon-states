# TS_SUPPORTED_Win2k3_Sp1
#
# 
#         This policy setting allows you to specify the type of Remote Desktop Services client access license (RDS CAL) that is required to connect to this RD Session Host server.
# 
#         You can use this policy setting to select one of three licensing modes: Per User , Per Device and AAD Per User .
# 
#         Per User licensing mode requires that each user account connecting to this RD Session Host server have an RDS Per User CAL issued from an RD Licensing server.
# 
#         Per Device licensing mode requires that each device connecting to this RD Session Host server have an RDS Per Device CAL issued from an RD Licensing server.
# 
#         AAD Per User licensing mode requires that each user account connecting to this RD Session Host server have a service plan that supports RDS licenses assigned in AAD.
#         
#         If you enable this policy setting, the Remote Desktop licensing mode that you specify is honored by the Remote Desktop license server and RD Session Host.
# 
#         If you disable or do not configure this policy setting, the licensing mode is not specified at the Group Policy level.
#       
Set the Remote Desktop licensing mode:
  lgpo.set:
  - name: TS_LICENSING_MODE
  - setting:
      TS_LICENSING_NAME: enum-placeholder
  - policy_class: Machine
