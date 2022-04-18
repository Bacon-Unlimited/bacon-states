# SUPPORTED_IE9
#
# This policy setting prevents Internet Explorer from displaying a notification when the average time to load all the user's enabled add-ons exceeds the threshold. The notification informs the user that add-ons are slowing his or her browsing and displays a button that opens the Disable Add-ons dialog box. The Disable Add-ons dialog box displays the load time for each group of add-ons enabled in the browser. It allows the user to disable add-ons and configure the threshold.
# 
# If you enable this policy setting, users are not notified when the average time to load all the user's enabled add-ons exceeds the threshold.
# 
# If you disable or do not configure this policy setting, users are notified when the average time to load all the user's enabled add-ons exceeds the threshold. This is the default.
Turn off add-on performance notifications:
  lgpo.set:
  - name: AddonManagement_DisableAddonLoadTimePerformanceNotifications
  - setting: Enabled
  - policy_class: Machine
