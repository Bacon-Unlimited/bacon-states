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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\IndexedDB_MaxTrustedDomainLimitInMB.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting sets data storage limits for indexed databases of websites that have been allowed to exceed their storage limit. The Set default storage limits for websites policy setting sets the data storage limits for indexed databases. If a domain exceeds the indexed database storage limit for an individual domain, Internet Explorer sends an error to the website. No notification is sent to the user. This group policy sets the maximum data storage limit for domains that are trusted by users. When you set this policy setting, you provide the cache limit, in MB. The default is 500 MB.
# 
# If you enable this policy setting, Internet Explorer will allow trusted domains to store additional data in indexed databases, up to the limit set in this group policy.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum storage limit for all indexed databases. The default is 500 MB.
Set indexed database storage limits for individual domains:
  lgpo.set:
  - name: IndexedDB_MaxTrustedDomainLimitInMB
  - setting:
      IndexedDB_MaxTrustedDomainLimitInMBPart: decimal-placeholder
  - policy_class: Machine
