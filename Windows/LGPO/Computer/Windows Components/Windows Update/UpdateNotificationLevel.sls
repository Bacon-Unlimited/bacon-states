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
# LOCATION: \Computer\Windows Components\Windows Update\UpdateNotificationLevel.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOARM
#
# 0 (default)  Use the default Windows Update notifications
# 1  Turn off all notifications, excluding restart warnings
# 2  Turn off all notifications, including restart warnings
# 
# This policy allows you to define what Windows Update notifications users see. This policy doesnt control how and when updates are downloaded and installed.
# 
# Important: if you choose not to get update notifications and also define other Group policy so that devices arent automatically getting updates, neither you nor device users will be aware of critical security, quality, or feature updates, and your devices may be at risk.
#       
Display options for update notifications:
  lgpo.set:
  - name: UpdateNotificationLevel
  - setting:
      UpdateNotificationLevel: enum-placeholder
  - policy_class: Machine
