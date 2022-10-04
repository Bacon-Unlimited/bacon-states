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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Real-time Protection\RealtimeProtection_RealtimeScanDirection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure monitoring for incoming and outgoing files, without having to turn off monitoring entirely. It is recommended for use on servers where there is a lot of incoming and outgoing file activity but for performance reasons need to have scanning disabled for a particular scan direction. The appropriate configuration should be evaluated based on the server role. 
# 
#     Note that this configuration is only honored for NTFS volumes. For any other file system type, full monitoring of file and program activity will be present on those volumes.
# 
#     The options for this setting are mutually exclusive:
#     0 = Scan incoming and outgoing files (default)
#     1 = Scan incoming files only
#     2 = Scan outgoing files only
# 
#     Any other value, or if the value does not exist, resolves to the default (0).
# 
#     If you enable this setting, the specified type of monitoring will be enabled.
# 
#     If you disable or do not configure this setting, monitoring for incoming and outgoing files will be enabled.
Configure monitoring for incoming and outgoing file and program activity:
  lgpo.set:
  - name: RealtimeProtection_RealtimeScanDirection
  - setting:
      RealtimeProtection_RealtimeScanDirection: enum-placeholder
  - policy_class: Machine
