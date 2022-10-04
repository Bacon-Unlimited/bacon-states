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
# LOCATION: \Computer\System\Group Policy\LogonScriptDelay.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# 
#         Enter 0 to disable Logon Script Delay.
# 
#         This policy setting allows you to configure how long the Group Policy client waits after logon before running scripts.
# 
#         By default, the Group Policy client waits five minutes before running logon scripts. This helps create a responsive desktop environment by preventing disk contention.
# 
#         If you enable this policy setting, Group Policy will wait for the specified amount of time before running logon scripts.
# 
#         If you disable this policy setting, Group Policy will run scripts immediately after logon.
# 
#         If you do not configure this policy setting, Group Policy will wait five minutes before running logon scripts.
#       
Configure Logon Script Delay:
  lgpo.set:
  - name: LogonScriptDelay
  - setting:
      AsyncScriptDelay1: decimal-placeholder
  - policy_class: Machine
