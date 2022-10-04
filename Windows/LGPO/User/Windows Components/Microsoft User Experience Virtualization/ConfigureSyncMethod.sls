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
# LOCATION: \User\Windows Components\Microsoft User Experience Virtualization\ConfigureSyncMethod.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting configures the sync provider used by User Experience Virtualization (UE-V) to sync settings between users computers. With Sync Method set to SyncProvider, the UE-V Agent uses a built-in sync provider to keep user settings synchronized between the computer and the settings storage location. This is the default value. You can disable the sync provider on computers that never go offline and are always connected to the settings storage location.
# When SyncMethod is set to None, the UE-V Agent uses no sync provider. Settings are written directly to the settings storage location rather than being cached to sync later. 
# Set SyncMethod to External when an external synchronization engine is being deployed for settings sync. This could use OneDrive, Work Folders, SharePoint or any other engine that uses a local folder to synchronize data between users computers. In this mode, UE-V writes settings data to the local folder specified in the settings storage path. These settings are then synchronized to other computers by an external synchronization engine. UE-V has no control over this synchronization. It only reads and writes the settings data when the normal UE-V triggers take place.
# With notifications enabled, UE-V users receive a message when the settings sync is delayed. The notification delay policy setting defines the delay before a notification appears.
# If you disable this policy setting, the sync provider is used to synchronize settings  between computers and the settings storage location.
# If you do not configure this policy setting, any defined values will be deleted.
# 
#       
Configure Sync Method:
  lgpo.set:
  - name: ConfigureSyncMethod
  - setting:
      SettingsImportNotification_Delay: decimal-placeholder
      SettingsImportNotification_Enable: boolean-placeholder
      SyncMethodConfiguration_list: enum-placeholder
  - policy_class: User
