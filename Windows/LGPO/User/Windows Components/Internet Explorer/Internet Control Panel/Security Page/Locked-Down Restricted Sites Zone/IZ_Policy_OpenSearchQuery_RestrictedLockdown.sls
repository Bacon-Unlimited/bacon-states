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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Restricted Sites Zone\IZ_Policy_OpenSearchQuery_RestrictedLockdown.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# 
# This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer.  Search Connectors allow rich searching of remote sources from within File Explorer.  Search results will be returned in File Explorer and can be acted upon like local files.
# 
# If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
# 
# If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.
# 
# If you do not configure this policy setting, users cannot perform OpenSearch queries in this zone using Search Connectors.
#       
Allow OpenSearch queries in File Explorer:
  lgpo.set:
  - name: IZ_Policy_OpenSearchQuery_RestrictedLockdown
  - setting: Enabled
  - policy_class: User
