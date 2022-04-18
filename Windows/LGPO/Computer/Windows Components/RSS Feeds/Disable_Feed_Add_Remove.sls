# SUPPORTED_IE7
#
# This policy setting prevents the user from subscribing to or deleting a feed or a Web Slice.
# 
# If you enable this policy setting, the menu command to subscribe to a feed and the menu command to delete a feed are disabled, and access to Web Slices is turned off. A developer cannot add a feed or Web Slice or delete a feed or Web Slice by using the Feed APIs. A developer also cannot create or delete folders.
# 
# If you disable or do not configure this policy setting, the user can subscribe to a feed or Web Slice through the Subscribe button in Internet Explorer and delete a feed or Web Slice through the feed list control. A developer can add or delete a feed or Web Slice by using the Feed APIs.
Prevent subscribing to or deleting a feed or a Web Slice:
  lgpo.set:
  - name: Disable_Feed_Add_Remove
  - setting: Enabled
  - policy_class: Machine
