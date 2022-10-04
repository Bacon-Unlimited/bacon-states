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
# LOCATION: \Computer\Windows Components\Windows Installer\MSILogging.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# 
#         Specifies the types of events that Windows Installer records in its transaction log for each installation. The log, Msi.log, appears in the Temp directory of the system volume.
# 
#         When you enable this policy setting, you can specify the types of events you want Windows Installer to record. To indicate that an event type is recorded, type the letter representing the event type. You can type the letters in any order and list as many or as few event types as you want.
# 
#         To disable logging, delete all of the letters from the box.
# 
#         If you disable or do not configure this policy setting, Windows Installer logs the default event types, represented by the letters "iweap."
Specify the types of events Windows Installer records in its transaction log:
  lgpo.set:
  - name: MSILogging
  - setting:
      MSILogging: text-placeholder
  - policy_class: Machine
