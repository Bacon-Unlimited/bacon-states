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
# LOCATION: \Computer\System\Net Logon\Netlogon_MaximumLogFileSize.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies the maximum size in bytes of the log file netlogon.log in the directory %windir%\debug when logging is enabled.
# 
# By default, the maximum size of the log file is 20MB. If you enable this policy setting, the maximum size of the log file is set to the specified size.  Once this size is reached the log file is saved to netlogon.bak and netlogon.log is truncated. A reasonable value based on available storage should be specified.
# 
# If you disable or do not configure this policy setting, the default behavior occurs as indicated above.
Specify maximum log file size:
  lgpo.set:
  - name: Netlogon_MaximumLogFileSize
  - setting:
      Netlogon_MaximumLogFileSizeLabel: decimal-placeholder
  - policy_class: Machine
