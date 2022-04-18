# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).
# 
# If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.
# 
# If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
# 
# If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
Access data sources across domains:
  lgpo.set:
  - name: IZ_PolicyAccessDataSourcesAcrossDomains_9
  - setting:
      IZ_Partname1406: enum-placeholder
  - policy_class: User
