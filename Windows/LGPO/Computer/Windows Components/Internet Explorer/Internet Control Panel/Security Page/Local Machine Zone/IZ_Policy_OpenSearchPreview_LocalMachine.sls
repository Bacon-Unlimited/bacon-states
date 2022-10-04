####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\IZ_Policy_OpenSearchPreview_LocalMachine.sls
#
# SUPPORTED WINDOWS OS
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
  - name: IZ_Policy_OpenSearchPreview_LocalMachine
  - setting: Enabled
  - policy_class: Machine
