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
# LOCATION: \Computer\Windows Components\Microsoft Edge\SyncFavoritesBetweenIEAndMicrosoftEdge.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This setting lets you decide whether people can sync their favorites between Internet Explorer and Microsoft Edge.
# 
# If you enable this setting, employees can sync their favorites between Internet Explorer and Microsoft Edge.
# 
# If you disable or don't configure this setting, employees cant sync their favorites between Internet Explorer and Microsoft Edge.
#       
Keep favorites in sync between Internet Explorer and Microsoft Edge:
  lgpo.set:
  - name: SyncFavoritesBetweenIEAndMicrosoftEdge
  - setting: Enabled
  - policy_class: Machine
