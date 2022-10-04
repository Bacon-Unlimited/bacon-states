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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\SyncProviderPingEnabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure the User Experience Virtualization (UE-V) sync provider to ping the settings storage path before attempting to sync settings. If the ping is successful then the sync provider attempts to synchronize the settings packages. If the ping is unsuccessful then the sync provider doesnt attempt the synchronization. 
# If you enable this policy setting, the sync provider pings the settings storage location before synchronizing settings packages.
# If you disable this policy setting, the sync provider doesnt ping the settings storage location before synchronizing settings packages. 
# If you do not configure this policy, any defined values will be deleted.
#       
Ping the settings storage location before sync:
  lgpo.set:
  - name: SyncProviderPingEnabled
  - setting: Enabled
  - policy_class: Machine
