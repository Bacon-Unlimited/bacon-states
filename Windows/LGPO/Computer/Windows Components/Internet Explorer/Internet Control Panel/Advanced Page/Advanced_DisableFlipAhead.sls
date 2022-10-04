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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_DisableFlipAhead.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10WIN8
#
# This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.
# 
# Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn't available for Internet Explorer for the desktop.
# 
# If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn't loaded into the background.
# 
# If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.
# 
# If you don't configure this setting, users can turn this behavior on or off, using the Settings charm.
Turn off the flip ahead with page prediction feature:
  lgpo.set:
  - name: Advanced_DisableFlipAhead
  - setting: Enabled
  - policy_class: Machine
