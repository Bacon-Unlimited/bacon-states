# windows:SUPPORTED_Windows8
#
# This policy setting controls which set of properties is available for classifying files on affected computers.
# 
# Administrators can define the properties for the organization by using Active Directory Domain Services (AD DS), and then group these properties into lists. Administrators can supplement these properties on individual file servers by using File Classification Infrastructure, which is part of the File Server Resource Manager role service.
# 
# If you enable this policy setting, you can select which list of properties is available for classification on the affected computers. 
# 
# If you disable or do not configure this policy setting, the Global Resource Property List in AD DS provides the default set of properties.
'File Classification Infrastructure: Specify classification properties list':
  lgpo.set:
  - name: CentralClassificationList
  - setting:
      CentralClassificationListTextElement: text-placeholder
  - policy_class: Machine
