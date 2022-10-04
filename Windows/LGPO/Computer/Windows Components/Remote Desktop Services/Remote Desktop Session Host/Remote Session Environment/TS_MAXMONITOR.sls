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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_MAXMONITOR.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to limit the number of monitors that a user can use to display a Remote Desktop Services session. Limiting the number of monitors to display a Remote Desktop Services session can improve connection performance, particularly over slow links, and reduce server load.
# 
# If you enable this policy setting, you can specify the number of monitors that can be used to display a Remote Desktop Services session. You can specify a number from 1 to 16.
# 
# If you disable or do not configure this policy setting, the number of monitors that can be used to display a Remote Desktop Services session is not specified at the Group Policy level.
# 
Limit number of monitors:
  lgpo.set:
  - name: TS_MAXMONITOR
  - setting:
      TS_Max_Monitor: decimal-placeholder
  - policy_class: Machine
