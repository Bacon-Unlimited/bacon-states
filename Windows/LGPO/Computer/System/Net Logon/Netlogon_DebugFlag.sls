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
# LOCATION: \Computer\System\Net Logon\Netlogon_DebugFlag.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies the level of debug output for the Net Logon service.
# 
# The Net Logon service outputs debug information to the log file netlogon.log in the directory %windir%\debug. By default, no debug information is logged.
# 
# If you enable this policy setting and specify a non-zero value, debug information will be logged to the file.  Higher values result in more verbose logging; the value of 536936447 is commonly used as an optimal setting.
# 
# If you specify zero for this policy setting, the default behavior occurs as described above.
# 
# If you disable this policy setting or do not configure it, the default behavior occurs as described above.
Specify log file debug output level:
  lgpo.set:
  - name: Netlogon_DebugFlag
  - setting:
      Netlogon_DebugFlagLabel: decimal-placeholder
  - policy_class: Machine
