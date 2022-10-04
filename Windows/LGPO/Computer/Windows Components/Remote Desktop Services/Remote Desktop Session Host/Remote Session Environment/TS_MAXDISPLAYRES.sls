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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_MAXDISPLAYRES.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the maximum display resolution that can be used by each monitor used to display a Remote Desktop Services session. Limiting the resolution used to display a remote session can improve connection performance, particularly over slow links, and reduce server load.
# 
# If you enable this policy setting, you must specify a resolution width and height. The resolution specified will be the maximum resolution that can be used by each monitor used to display a Remote Desktop Services session.
# 
# If you disable or do not configure this policy setting, the maximum resolution that can be used by each monitor to display a Remote Desktop Services session will be determined by the values specified on the Display Settings tab in the Remote Desktop Session Host Configuration tool.
# 
Limit maximum display resolution:
  lgpo.set:
  - name: TS_MAXDISPLAYRES
  - setting:
      TS_DisplayRes_Height: decimal-placeholder
      TS_DisplayRes_Width: decimal-placeholder
  - policy_class: Machine
