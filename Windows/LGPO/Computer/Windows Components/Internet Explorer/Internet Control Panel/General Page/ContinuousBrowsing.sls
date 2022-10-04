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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\General Page\ContinuousBrowsing.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting configures what Internet Explorer displays when a new browsing session is started. By default, Internet Explorer displays the home page. In Internet Explorer 10, Internet Explorer can start a new browsing session with the tabs from the last browsing session.
# 
# If you enable this policy setting, Internet Explorer starts a new browsing session with the tabs from the last browsing session. Users cannot change this option to start with the home page.
# 
# If you disable this policy setting, Internet Explorer starts a new browsing session with the home page. Users cannot change this option to start with the tabs from the last browsing session.
# 
# If you do not configure this policy setting, Internet Explorer starts with the home page. Users can change this option to start with the tabs from the last session.
Start Internet Explorer with tabs from last browsing session:
  lgpo.set:
  - name: ContinuousBrowsing
  - setting: Enabled
  - policy_class: Machine
