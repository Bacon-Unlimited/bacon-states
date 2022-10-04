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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_AlwaysSendDoNotTrack.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting allows you to configure how Internet Explorer sends the Do Not Track (DNT) header.
# 
# If you enable this policy setting, Internet Explorer sends a DNT:1 header with all HTTP and HTTPS requests. The DNT:1 header signals to the servers not to track the user.
# 
# For Internet Explorer 9 and 10:
# If you disable this policy setting, Internet Explorer only sends the Do Not Track header if a Tracking Protection List is enabled or inPrivate Browsing mode is used.
# 
# For at least Internet Explorer 11:
# If you disable this policy setting, Internet Explorer only sends the Do Not Track header if inPrivate Browsing mode is used.
# 
# If you don't configure the policy setting, users can select the Always send Do Not Track header option, in Internet Explorer settings. By selecting this option, Internet Explorer sends a DNT:1 header with all HTTP and HTTPS requests; unless the user grants a site-specific exception. Internet Explorer sends a DNT:0 header to any sites granted an exception. By default, this option is turned on.
Always send Do Not Track header:
  lgpo.set:
  - name: Advanced_AlwaysSendDoNotTrack
  - setting: Enabled
  - policy_class: User
