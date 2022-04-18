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
  - name: Pol_AssignedOfflineFiles_2
  - setting:
      Lbl_AssignedOfflineFilesList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
