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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection\TS_CLIENT_DEFAULT_M.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify whether the client default printer is automatically set as the default printer in a session on an RD Session Host server.
# 
# By default, Remote Desktop Services automatically designates the client default printer as the default printer in a session on an RD Session Host server. You can use this policy setting to override this behavior.
# 
# If you enable this policy setting, the default printer is the printer specified on the remote computer.
# 
# If you disable this policy setting, the RD Session Host server automatically maps the client default printer and sets it as the default printer upon connection.
# 
# If you do not configure this policy setting, the default printer is not specified at the Group Policy level.
# 
Do not set default client printer to be default printer in a session:
  lgpo.set:
  - name: TS_CLIENT_DEFAULT_M
  - setting: Enabled
  - policy_class: Machine
