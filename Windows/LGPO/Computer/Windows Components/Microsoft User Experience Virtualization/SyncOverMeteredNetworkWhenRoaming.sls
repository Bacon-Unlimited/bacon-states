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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\SyncOverMeteredNetworkWhenRoaming.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings over metered connections outside of the home provider network, for example when connected via a roaming connection.
# By default, the UE-V Agent does not synchronize settings over a metered connection that is roaming.
# With this setting enabled, the UE-V Agent synchronizes settings over a metered connection that is roaming.
# With this setting disabled, the UE-V Agent will not synchronize settings over a metered connection that is roaming.
# If you do not configure this policy setting, any defined values are deleted.
#       
Sync settings over metered connections even when roaming:
  lgpo.set:
  - name: SyncOverMeteredNetworkWhenRoaming
  - setting: Enabled
  - policy_class: Machine
