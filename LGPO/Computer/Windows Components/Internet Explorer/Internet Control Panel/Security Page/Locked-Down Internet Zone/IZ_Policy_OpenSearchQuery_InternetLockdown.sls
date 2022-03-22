# windows:SUPPORTED_Windows7
#
# 
# This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer.  Search Connectors allow rich searching of remote sources from within File Explorer.  Search results will be returned in File Explorer and can be acted upon like local files.
# 
# If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
# 
# If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.
# 
# If you do not configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
#       
Allow OpenSearch queries in File Explorer:
  lgpo.set:
  - name: IZ_Policy_OpenSearchQuery_InternetLockdown
  - setting: Enabled
  - policy_class: Machine
