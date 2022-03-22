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
