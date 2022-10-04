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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection\TS_CLIENT_PRINTER.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify whether to prevent the mapping of client printers in Remote Desktop Services sessions.
# 
# You can use this policy setting to prevent users from redirecting print jobs from the remote computer to a printer attached to their local (client) computer. By default, Remote Desktop Services allows this client printer mapping.
# 
# If you enable this policy setting, users cannot redirect print jobs from the remote computer to a local client printer in Remote Desktop Services sessions.
# 
# If you disable this policy setting, users can redirect print jobs with client printer mapping.
# 
# If you do not configure this policy setting, client printer mapping is not specified at the Group Policy level.
# 
Do not allow client printer redirection:
  lgpo.set:
  - name: TS_CLIENT_PRINTER
  - setting: Enabled
  - policy_class: Machine
