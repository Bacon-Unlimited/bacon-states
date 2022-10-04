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
# LOCATION: \User\Windows Components\Internet Explorer\AddonManagement_DisableAddonLoadTimePerformanceNotifications.sls
#
# SUPPORTED WINDOWS OS
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
  - policy_class: User
