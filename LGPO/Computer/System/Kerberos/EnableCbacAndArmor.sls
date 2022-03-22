# windows:SUPPORTED_Windows8
#
# This policy setting controls whether a device will request claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication with domains that support these features. 
# If you enable this policy setting, the client computers will request claims, provide information required to create compounded authentication and armor Kerberos messages in domains which support claims and compound authentication for Dynamic Access Control and Kerberos armoring.
# 
# If you disable or do not configure this policy setting, the client devices will not request claims, provide information required to create compounded authentication and armor Kerberos messages. Services hosted on the device will not be able to retrieve claims for clients using Kerberos protocol transition.  
# 
Kerberos client support for claims, compound authentication and Kerberos armoring:
  lgpo.set:
  - name: EnableCbacAndArmor
  - setting: Enabled
  - policy_class: Machine
