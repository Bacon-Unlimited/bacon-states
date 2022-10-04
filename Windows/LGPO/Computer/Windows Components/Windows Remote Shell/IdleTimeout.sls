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
# LOCATION: \Computer\Windows Components\Windows Remote Shell\IdleTimeout.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum time in milliseconds remote shell will stay open without any user activity until it is automatically deleted.
# 
# Any value from 0 to 0x7FFFFFFF can be set. A minimum of 60000 milliseconds (1 minute) is used for smaller values.
# 
# If you enable this policy setting, the server will wait for the specified amount of time since the last received message from the client before terminating the open shell.
# 
# If you do not configure or disable this policy setting, the default value of 900000 or 15 min will be used.
Specify idle Timeout:
  lgpo.set:
  - name: IdleTimeout
  - setting:
      IdleTimeout: decimal-placeholder
  - policy_class: Machine
