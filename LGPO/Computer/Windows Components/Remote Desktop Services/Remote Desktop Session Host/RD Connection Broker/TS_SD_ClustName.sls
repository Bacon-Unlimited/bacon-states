# SUPPORTED_WindowsNET_Enterprise
#
# This policy setting allows you to specify the name of a farm to join in RD Connection Broker. RD Connection Broker uses the farm name to determine which RD Session Host servers are in the same RD Session Host server farm. Therefore, you must use the same farm name for all RD Session Host servers in the same load-balanced farm. The farm name does not have to correspond to a name in Active Directory Domain Services.
# 
# If you specify a new farm name, a new farm is created in RD Connection Broker. If you specify an existing farm name, the server joins that farm in RD Connection Broker.
# 
# If you enable this policy setting, you must specify the name of a farm in RD Connection Broker.
# 
# If you disable or do not configure this policy setting, the farm name is not specified at the Group Policy level. 
# 
# Notes:
# 
#      1. This policy setting is not effective unless both the Join RD Connection Broker and the Configure RD Connection Broker server name policy settings are enabled and configured by using Group Policy.
# 
#      2. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
# 
Configure RD Connection Broker farm name:
  lgpo.set:
  - name: TS_SD_ClustName
  - setting:
      TS_SD_ClustName: text-placeholder
  - policy_class: Machine
