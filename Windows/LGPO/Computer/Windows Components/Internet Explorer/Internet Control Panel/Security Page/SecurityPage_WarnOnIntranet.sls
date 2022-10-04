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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\SecurityPage_WarnOnIntranet.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting causes a Notification bar notification to appear when intranet content is loaded and the intranet mapping rules have not been configured. The Notification bar allows the user to enable intranet mappings, if they require them.
# 
# If you enable this policy setting, a Notification bar notification appears whenever the user browses to a page that loads content from an intranet site.
# 
# If you disable this policy setting, a Notification bar notification does not appear when the user loads content from an intranet site that is being treated as though it is in the Internet zone.
# 
# If this policy setting is not configured, a Notification bar notification appears for intranet content loaded on a browser on a computer that is not a domain member, until the user turns off the Notification bar.
Turn on Notification bar notification for intranet content:
  lgpo.set:
  - name: SecurityPage_WarnOnIntranet
  - setting: Enabled
  - policy_class: Machine
