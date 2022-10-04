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
# LOCATION: \Computer\Network\Offline Files\Pol_SlowLinkSpeed.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOnly
#
# Configures the threshold value at which Offline Files considers a network connection to be "slow". Any network speed below this value is considered to be slow.
# 
# When a connection is considered slow, Offline Files automatically adjust its behavior to avoid excessive synchronization traffic and will not automatically reconnect to a server when the presence of a server is detected.
# 
# If you enable this setting, you can configure the threshold value that will be used to determine a slow network connection.
# 
# If this setting is disabled or not configured, the default threshold value of 64,000 bps is used to determine if a network connection is considered to be slow.
# 
# Note: Use the following formula when entering the slow link value: [ bps / 100]. For example, if you want to set a threshold value of 128,000 bps, enter a value of 1280.
Configure Slow link speed:
  lgpo.set:
  - name: Pol_SlowLinkSpeed
  - setting:
      Lbl_SlowLinkSpeedSpin: decimal-placeholder
  - policy_class: Machine
