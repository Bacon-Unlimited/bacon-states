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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\IndexedDB_TotalLimitInMB.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting sets the data storage limit for all combined indexed databases for a user. When you set this policy setting, you provide the storage limit in MB. When the limit is reached, Internet Explorer notifies the user, and the user must delete indexed databases before an updated database can be saved on their computer. The default maximum storage limit for all indexed databases is 4 GB.
# 
# If you enable this policy setting, you can set the maximum storage limit for all indexed databases. The default is 4 GB.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum storage limit for all indexed databases. The default is 4 GB.
Set maximum indexed database storage limit for all domains:
  lgpo.set:
  - name: IndexedDB_TotalLimitInMB
  - setting:
      IndexedDB_TotalLimitInMBPart: decimal-placeholder
  - policy_class: Machine
