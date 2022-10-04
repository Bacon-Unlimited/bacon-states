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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\DisableWin8Sync.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings for Windows apps.
# By default, the UE-V Agent synchronizes settings for Windows apps between the computer and the settings storage location.  
# If you enable this policy setting, the UE-V Agent will not synchronize settings for Windows apps.
# If you disable this policy setting, the UE-V Agent will synchronize settings for Windows apps. 
# If you do not configure this policy setting, any defined values are deleted.
# Note: If the user connects their Microsoft account for their computer then the UE-V Agent will not synchronize Windows apps. The Windows apps will default to whatever settings are configured in the Sync your settings configuration in Windows.
#       
Do not synchronize Windows Apps:
  lgpo.set:
  - name: DisableWin8Sync
  - setting: Enabled
  - policy_class: Machine
