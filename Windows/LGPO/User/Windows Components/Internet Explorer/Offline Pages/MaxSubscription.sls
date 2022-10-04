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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\MaxSubscription.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Restricts the amount of information downloaded for offline viewing.
# 
# If you enable this policy, you can set limits to the size and number of pages that users can download. If users attempt to exceed the number of subscriptions, a prompt will appear that states that they cannot set up more Web sites for offline viewing.
# 
# If you disable this policy or do not configure it, then users can determine the amount of content that is searched for new information and downloaded.
# 
# Caution: Although the Maximum Number of Offline Pages option determines how many levels of a Web site are searched for new information, it does not change the user interface in the Offline Favorites wizard.
# 
# Note: The begin and end times for downloading are measured in minutes after midnight. The Maximum Offline Page Crawl Depth setting specifies how many levels of a Web site are searched for new information.
Subscription Limits:
  lgpo.set:
  - name: MaxSubscription
  - setting:
      MaxSubscriptionCount: decimal-placeholder
      MaxSubscriptionSize: decimal-placeholder
      MaxWebcrawlLevels: enum-placeholder
      MinUpdateInterval: decimal-placeholder
      UpdateExcludeBegin: decimal-placeholder
      UpdateExcludeEnd: decimal-placeholder
  - policy_class: User
