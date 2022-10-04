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
# LOCATION: \User\Desktop\sz_DB_Moving.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents users from adjusting the length of desktop toolbars. Also, users cannot reposition items or toolbars on docked toolbars.
# 
# This setting does not prevent users from adding or removing toolbars on the desktop.
# 
# Note: If users have adjusted their toolbars, this setting prevents them from restoring the default configuration.
# 
# Also, see the "Prevent adding, dragging, dropping and closing the Taskbar's toolbars" setting.
Prohibit adjusting desktop toolbars:
  lgpo.set:
  - name: sz_DB_Moving
  - setting: Enabled
  - policy_class: User
