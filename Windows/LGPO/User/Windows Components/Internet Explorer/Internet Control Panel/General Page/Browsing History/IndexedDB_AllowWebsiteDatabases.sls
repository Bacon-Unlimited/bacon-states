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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\IndexedDB_AllowWebsiteDatabases.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting allows websites to store indexed database cache information on client computers.
# 
# If you enable this policy setting, websites will be able to store an indexed database on client computers. Allow website database and caches on Website Data Settings will be unavailable to users.
# 
# If you disable this policy setting, websites will not be able to store an indexed database on client computers. Allow website database and caches on Website Data Settings will be unavailable to users.
# 
# If you do not configure this policy setting, websites will be able to store an indexed database on client computers. Allow website database and caches on Website Data Settings will be available to users. Users can choose whether or not to allow websites to store data on their computers.
Allow websites to store indexed databases on client computers:
  lgpo.set:
  - name: IndexedDB_AllowWebsiteDatabases
  - setting: Enabled
  - policy_class: User
