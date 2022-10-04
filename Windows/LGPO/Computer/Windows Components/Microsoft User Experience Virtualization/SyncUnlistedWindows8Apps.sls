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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\SyncUnlistedWindows8Apps.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting defines the default settings sync behavior of the User Experience Virtualization (UE-V) Agent for Windows apps that are not explicitly listed in Windows App List.
# By default, the UE-V Agent only synchronizes settings of those Windows apps included in the Windows App List.
# With this setting enabled, the settings of all Windows apps not expressly disable in the Windows App List are synchronized.
# With this setting disabled, only the settings of the Windows apps set to synchronize in the Windows App List are synchronized.
# If you do not configure this policy setting, any defined values are deleted.
#       
Sync Unlisted Windows Apps:
  lgpo.set:
  - name: SyncUnlistedWindows8Apps
  - setting: Enabled
  - policy_class: Machine
