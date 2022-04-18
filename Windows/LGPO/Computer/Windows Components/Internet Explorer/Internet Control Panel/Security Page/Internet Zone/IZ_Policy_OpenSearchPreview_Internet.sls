# windows:SUPPORTED_Windows7
#
# 
# This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it is the zone of the thumbnail that is checked, not the zone of item.  Typically these are the same but a source is able to define a specific location of a thumbnail that is different than the location of the item.
# 
# If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.
# 
# If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.
# 
# If you do not configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.
# 
# Changes to this setting may not be applied until the user logs off from Windows.
#       
Allow previewing and custom thumbnails of OpenSearch query results in File Explorer:
  lgpo.set:
  - name: IZ_Policy_OpenSearchPreview_Internet
  - setting: Enabled
  - policy_class: Machine
