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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_EnableSPDY3_0.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11WIN8ONLY
#
# This policy setting determines whether Internet Explorer uses the SPDY/3 network protocol. SPDY/3 works with HTTP requests to optimize the latency of network requests through compression, multiplexing and prioritization.
# 
# If you enable this policy setting, Internet Explorer uses the SPDY/3 network protocol.
# 
# If you disable this policy setting, Internet Explorer won't use the SPDY/3 network protocol.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer Advanced Internet Options settings.  The default is on.
Allow Internet Explorer to use the SPDY/3 network protocol:
  lgpo.set:
  - name: Advanced_EnableSPDY3_0
  - setting: Enabled
  - policy_class: User
