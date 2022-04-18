# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify which protocols can be used for Remote Desktop Protocol (RDP) access to this server.
# 
# If you enable this policy setting, you must specify if you would like RDP to use UDP.
# 
# You can select one of the following options: "Use both UDP and TCP", "Use only TCP" or "Use either UDP or TCP (default)" 
# 
# If you select "Use either UDP or TCP" and the UDP connection is successful, most of the RDP traffic will use UDP.
# 
# If the UDP connection is not successful or if you select "Use only TCP," all of the RDP traffic will use TCP.
# 
# If you disable or do not configure this policy setting, RDP will choose the optimal protocols for delivering the best user experience.
# 	  
Select RDP transport protocols:
  lgpo.set:
  - name: TS_SELECT_TRANSPORT
  - setting:
      TS_SELECT_TRANSPORT_TYPE: enum-placeholder
  - policy_class: Machine
