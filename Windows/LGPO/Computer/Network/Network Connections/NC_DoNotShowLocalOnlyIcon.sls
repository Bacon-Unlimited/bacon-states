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
# LOCATION: \Computer\Network\Network Connections\NC_DoNotShowLocalOnlyIcon.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Specifies whether or not the "local access only" network icon will be shown.
# 
# When enabled, the icon for Internet access will be shown in the system tray even when a user is connected to a network with local access only.
# 
# If you disable this setting or do not configure it, the "local access only" icon will be used when a user is connected to a network with local access only.
Do not show the "local access only" network icon:
  lgpo.set:
  - name: NC_DoNotShowLocalOnlyIcon
  - setting: Enabled
  - policy_class: Machine
