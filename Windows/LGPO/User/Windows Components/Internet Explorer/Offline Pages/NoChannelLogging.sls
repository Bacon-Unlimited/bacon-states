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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoChannelLogging.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents channel providers from recording information about when their channel pages are viewed by users who are working offline.
# 
# If you enable this policy, it disables any channel logging settings set by channel providers in the channel definition format (.cdf) file. The .cdf file determines the schedule and other settings for downloading Web content.
# 
# If you disable this policy or do not configure it, channel providers can record information about when their channel pages are viewed by users who are working offline.
Disable offline page hit logging:
  lgpo.set:
  - name: NoChannelLogging
  - setting: Enabled
  - policy_class: User
