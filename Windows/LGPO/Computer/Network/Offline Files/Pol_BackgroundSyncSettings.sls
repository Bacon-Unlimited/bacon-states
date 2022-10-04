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
# LOCATION: \Computer\Network\Offline Files\Pol_BackgroundSyncSettings.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting controls when background synchronization occurs while operating in slow-link mode, and applies to any user who logs onto the specified machine while this policy is in effect. To control slow-link mode, use the "Configure slow-link mode" policy setting.
# 
# If you enable this policy setting, you can control when Windows synchronizes in the background while operating in slow-link mode. Use  the 'Sync Interval' and 'Sync Variance' values to override the default sync interval and variance settings. Use 'Blockout Start Time' and 'Blockout Duration' to set a period of time where background sync is disabled. Use the 'Maximum Allowed Time Without A Sync' value to ensure that all  network folders on the machine are synchronized with the server on a regular basis.
# 
# You can also configure Background Sync for network shares that are in user selected Work Offline mode. This mode is in effect when a user selects the Work Offline button for a specific share. When selected, all configured settings will apply to shares in user selected Work Offline mode as well.
# 
# If you disable or do not configure this policy setting, Windows performs a background sync of offline folders in the slow-link mode at a default interval with the start of the sync varying between 0 and 60 additional minutes. In Windows 7 and Windows Server 2008 R2, the default sync interval is 360 minutes. In Windows 8 and Windows Server 2012, the default sync interval is 120 minutes.
Configure Background Sync:
  lgpo.set:
  - name: Pol_BackgroundSyncSettings
  - setting:
      Lbl_BackgroundSyncBlockOutPeriodDuration: decimal-placeholder
      Lbl_BackgroundSyncBlockOutPeriodStartTime: decimal-placeholder
      Lbl_BackgroundSyncDefaultSyncTime: decimal-placeholder
      Lbl_BackgroundSyncIgnoreBlockOutTime: decimal-placeholder
      Lbl_BackgroundSyncInForcedOffline: boolean-placeholder
      Lbl_BackgroundSyncVariance: decimal-placeholder
  - policy_class: Machine
