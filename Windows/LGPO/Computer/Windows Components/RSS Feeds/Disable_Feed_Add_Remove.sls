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
# LOCATION: \Computer\Windows Components\RSS Feeds\Disable_Feed_Add_Remove.sls
#
# SUPPORTED WINDOWS OS
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
