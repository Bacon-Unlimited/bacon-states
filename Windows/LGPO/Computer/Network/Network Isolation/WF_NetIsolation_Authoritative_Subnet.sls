# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 				
# Turns off  Windows Network Isolation's automatic discovery of private network hosts in the domain corporate environment.
# 
# If you enable this policy setting, it turns off Windows Network Isolation's automatic discovery of private network hosts in the domain corporate environment. Only network hosts within the address ranges configured via Group Policy will be classified as private.
# 
# If you disable or do not configure this policy setting, Windows Network Isolation attempts to automatically discover your private network hosts in the domain corporate environment. 
# 				
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Subnet definitions are authoritative:
  lgpo.set:
  - name: WF_NetIsolation_Authoritative_Subnet
  - setting: Enabled
  - policy_class: Machine
