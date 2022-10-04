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
# LOCATION: \User\Windows Components\Remote Desktop Services\Remote Desktop Connection Client\TS_CLIENT_ALLOW_UNSIGNED_FILES_1.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Vista_SP1
#
# This policy setting allows you to specify whether users can run unsigned Remote Desktop Protocol (.rdp) files and .rdp files from unknown publishers on the client computer.
# 
# If you enable or do not configure this policy setting, users can run unsigned .rdp files and .rdp files from unknown publishers on the client computer. Before a user starts an RDP session, the user receives a warning message and is asked to confirm whether they want to connect.
# 
# If you disable this policy setting, users cannot run unsigned .rdp files and .rdp files from unknown publishers on the client computer. If the user tries to start an RDP session, the user receives a message that the publisher has been blocked.
# 
Allow .rdp files from unknown publishers:
  lgpo.set:
  - name: TS_CLIENT_ALLOW_UNSIGNED_FILES_1
  - setting: Enabled
  - policy_class: User
