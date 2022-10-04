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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\DefaultLinksView.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10WIN8
#
# This policy setting allows you to choose how links are opened in Internet Explorer: Let Internet Explorer decide, always in Internet Explorer, or always in Internet Explorer on the desktop.
# 
# If you enable this policy setting, Internet Explorer enforces your choice. Users cannot change the setting.
# 
# If you disable or do not configure this policy setting, users can choose how links are opened in Internet Explorer.
Set how links are opened in Internet Explorer:
  lgpo.set:
  - name: DefaultLinksView
  - setting:
      DefaultViewOptions: enum-placeholder
  - policy_class: User
