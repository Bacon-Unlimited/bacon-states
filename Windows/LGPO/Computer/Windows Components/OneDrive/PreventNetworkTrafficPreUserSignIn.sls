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
# LOCATION: \Computer\Windows Components\OneDrive\PreventNetworkTrafficPreUserSignIn.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Enable this setting to prevent the OneDrive sync client (OneDrive.exe) from generating network traffic (checking for updates, etc.) until the user signs in to OneDrive or starts syncing files to the local computer.
# 
# If you enable this setting, users must sign in to the OneDrive sync client on the local computer, or select to sync OneDrive or SharePoint files on the computer, for the sync client to start automatically.
# 
# If this setting is not enabled, the OneDrive sync client will start automatically when users sign in to Windows.
# 
# If you enable or disable this setting, do not return the setting to Not Configured. Doing so will not change the configuration and the last configured setting will remain in effect.
Prevent OneDrive from generating network traffic until the user signs in to OneDrive:
  lgpo.set:
  - name: PreventNetworkTrafficPreUserSignIn
  - setting: Enabled
  - policy_class: Machine
