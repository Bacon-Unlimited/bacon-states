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
# LOCATION: \Computer\Windows Components\Sync your settings\DisableSyncOnPaidNetwork.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Prevent syncing to and from this PC when on metered Internet connections.  This turns off and disables "sync your settings on metered connections" switch on the "sync your settings" page in PC Settings.
# 
# If you enable this policy setting, syncing on metered connections will be turned off, and no syncing will take place when this PC is on a metered connection.
# 
# If you do not set or disable this setting, syncing on metered connections is configurable by the user.
#       
Do not sync on metered connections:
  lgpo.set:
  - name: DisableSyncOnPaidNetwork
  - setting: Enabled
  - policy_class: Machine
