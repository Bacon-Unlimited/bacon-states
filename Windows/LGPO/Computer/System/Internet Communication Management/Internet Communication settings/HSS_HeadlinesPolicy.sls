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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\HSS_HeadlinesPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether to show the "Did you know?" section of Help and Support Center.
# 
# This content is dynamically updated when users who are connected to the Internet open Help and Support Center, and provides up-to-date information about Windows and the computer.
# 
# If you enable this policy setting, the Help and Support Center no longer retrieves nor displays "Did you know?" content.
# 
# If you disable or do not configure this policy setting, the Help and Support Center retrieves and displays "Did you know?" content.
# 
# You might want to enable this policy setting for users who do not have Internet access, because the content in the "Did you know?" section will remain static indefinitely without an Internet connection.
Turn off Help and Support Center "Did you know?" content:
  lgpo.set:
  - name: HSS_HeadlinesPolicy
  - setting: Enabled
  - policy_class: Machine
