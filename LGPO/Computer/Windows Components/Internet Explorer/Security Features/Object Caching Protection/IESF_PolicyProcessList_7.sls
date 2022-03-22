# SUPPORTED_IE6SP2
#
# This policy setting defines whether a reference to an object is accessible when the user navigates within the same domain or to a new domain.
# 
# This policy setting allows administrators to define applications for which they want this security feature to be prevented or allowed.
# 
# If you enable this policy setting and enter a Value of 1, references to objects are inaccessible after navigation. If you enter a Value of 0, references to objects are still accessible after navigation. The Value Name is the name of the executable. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter the Internet Explorer processes in this list: use the related Internet Explorer Processes policy to enable or disable IE processes. If the All Processes policy setting is enabled, the processes configured in this box take precedence over that setting.
# 
# If you disable or do not configure this policy setting, the security feature is allowed.
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_7
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
