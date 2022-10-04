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
# LOCATION: \Computer\Windows Components\Microsoft Edge\AllowDoNotTrack.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether employees can send Do Not Track requests to websites that ask for tracking info. By default, Do Not Track requests aren't sent, but employees can choose to turn on and send requests.
# 
# If you enable this setting, Do Not Tracker requests are always sent to websites asking for tracking info.
# 
# If you disable this setting, Do Not Track requests are never sent to websites asking for tracking info.
# 
# If you don't configure this setting, employees can choose whether to send Do Not Track requests to websites asking for tracking info.
Configure Do Not Track:
  lgpo.set:
  - name: AllowDoNotTrack
  - setting: Enabled
  - policy_class: Machine
