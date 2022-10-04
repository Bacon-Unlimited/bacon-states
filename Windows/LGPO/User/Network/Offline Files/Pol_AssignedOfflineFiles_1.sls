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
# LOCATION: \User\Network\Offline Files\Pol_AssignedOfflineFiles_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting lists network files and folders that are always available for offline use. This ensures that the specified files and folders are available offline to users of the computer.
# 
# If you enable this policy setting, the files you enter are always available offline to users of the computer. To specify a file or folder, click Show. In the Show Contents dialog box in the Value Name column, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.
# 
# If you disable this policy setting, the list of files or folders made always available offline (including those inherited from lower precedence GPOs) is deleted and no files or folders are made available for offline use by Group Policy (though users can still specify their own files and folders for offline use).
# 
# If you do not configure this policy setting, no files or folders are made available for offline use by Group Policy.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings will be combined and all specified files will be available for offline use.
Specify administratively assigned Offline Files:
  lgpo.set:
  - name: Pol_AssignedOfflineFiles_1
  - setting:
      Lbl_AssignedOfflineFilesList:
      - placeholder1
      - placeholder2
  - policy_class: User
