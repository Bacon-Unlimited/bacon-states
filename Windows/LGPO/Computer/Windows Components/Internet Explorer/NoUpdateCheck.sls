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
# LOCATION: \Computer\Windows Components\Internet Explorer\NoUpdateCheck.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents Internet Explorer from checking whether a new version of the browser is available.
# 
# If you enable this policy, it prevents Internet Explorer from checking to see whether it is the latest available browser version and notifying users if a new version is available.
# 
# If you disable this policy or do not configure it, Internet Explorer checks every 30 days by default, and then notifies users if a new version is available.
# 
# This policy is intended to help the administrator maintain version control for Internet Explorer by preventing users from being notified about new versions of the browser.
Disable Periodic Check for Internet Explorer software updates:
  lgpo.set:
  - name: NoUpdateCheck
  - setting: Enabled
  - policy_class: Machine
