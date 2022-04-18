# windows:SUPPORTED_Win2k
#
# Hide the Back button in the Open dialog box.
# 
# This policy setting lets you remove new features added in Microsoft Windows 2000 Professional, so the Open dialog box appears as it did in Windows NT 4.0 and earlier. This policy setting affects only programs that use the standard Open dialog box provided to developers of Windows programs.
# 
# If you enable this policy setting, the Back button is removed from the standard Open dialog box.
# 
# If you disable or do not configure this policy setting, the Back button is displayed for any standard Open dialog box.
# 
# To see an example of the standard Open dialog box, start Notepad  and, on the File menu, click Open.
# 
# Note: In Windows Vista, this policy  setting applies only to applications that are using the Windows XP common dialog box style. This policy setting does not apply to the new Windows Vista common dialog box style. Also, third-party applications with Windows 2000 or later certification to are required to adhere to this policy setting.
Hide the common dialog back button:
  lgpo.set:
  - name: NoBackButton
  - setting: Enabled
  - policy_class: User
