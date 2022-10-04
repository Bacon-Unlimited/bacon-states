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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\DefaultDomainCacheLimitInMB.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting sets data storage limits for indexed database and application caches for individual websites. When you set this policy setting, you provide the cache limit, in MB.
# 
# If you enable this policy setting, Internet Explorer displays a notification when a website exceeds the configured storage limit.
# 
# If you disable or do not configure this policy setting, users can set default data storage limits for indexed databases and application caches.
Set default storage limits for websites:
  lgpo.set:
  - name: DefaultDomainCacheLimitInMB
  - setting:
      DefaultDomainCacheLimitInMBPart: decimal-placeholder
  - policy_class: User
