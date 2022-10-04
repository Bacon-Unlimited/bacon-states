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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\AppCache_GarbageCollectionThresholdInDays.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting sets the number of days an inactive application cache will exist before it is removed. If the application cache is used before the expiration time limit, it will not be automatically removed. When you set this policy setting, you provide the expiration time limit in days.
# 
# If you enable this policy setting, Internet Explorer will remove application caches that haven't been used within the timeframe set in this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default application cache expiration time limit for all application caches. The default is 30 days.
Set application caches expiration time limit for individual domains:
  lgpo.set:
  - name: AppCache_GarbageCollectionThresholdInDays
  - setting:
      AppCache_GarbageCollectionThresholdInDaysPart: decimal-placeholder
  - policy_class: User
