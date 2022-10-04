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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Settings\DefaultTilesView.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10WIN8
#
# This policy setting configures Internet Explorer to open Internet Explorer tiles on the desktop.
# 
# If you enable this policy setting, Internet Explorer opens tiles only on the desktop.
# 
# If you disable this policy setting, Internet Explorer does not open tiles on the desktop.
# 
# If you do not configure this policy, users can choose how Internet Explorer tiles are opened.
Open Internet Explorer tiles on the desktop:
  lgpo.set:
  - name: DefaultTilesView
  - setting: Enabled
  - policy_class: Machine
