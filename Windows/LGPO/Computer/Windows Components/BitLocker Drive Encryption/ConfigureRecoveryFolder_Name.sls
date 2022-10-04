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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\ConfigureRecoveryFolder_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.
# 
# If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.
# 
# If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.
# 
# Note: This policy setting does not prevent the user from saving the recovery password in another folder.
# 
# 
Choose default folder for recovery password:
  lgpo.set:
  - name: ConfigureRecoveryFolder_Name
  - setting:
      ConfigureRecoveryFolderPath_Input: text-placeholder
  - policy_class: Machine
