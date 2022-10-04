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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_NoDisconnectMenu.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k
#
# This policy setting allows you to remove the "Disconnect" option from the Shut Down Windows dialog box in Remote Desktop Services sessions.
# 
# You can use this policy setting to prevent users from using this familiar method to disconnect their client from an RD Session Host server.
# 
# If you enable this policy setting, "Disconnect" does not appear as an option in the drop-down list in the Shut Down Windows dialog box.
# 
# If you disable or do not configure this policy setting, "Disconnect" is not removed from the list in the Shut Down Windows dialog box.
# 
# Note: This policy setting affects only the Shut Down Windows dialog box. It does not prevent users from using other methods to disconnect from a Remote Desktop Services session. This policy setting also does not prevent disconnected sessions at the server. You can control how long a disconnected session remains active on the server by configuring the "Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\RD Session Host\Session Time Limits\Set time limit for disconnected sessions" policy setting.
Remove "Disconnect" option from Shut Down dialog:
  lgpo.set:
  - name: TS_NoDisconnectMenu
  - setting: Enabled
  - policy_class: Machine
