# windows:SUPPORTED_Win2k
#
# Removes the list of most recently used files from the Open dialog box.
# 
# If you disable this setting or do not configure it, the "File name" field includes a drop-down list of recently used files. If you enable this setting, the "File name" field is a simple text box. Users must browse directories to find a file or type a file name in the text box.
# 
# This setting, and others in this folder, lets you remove new features added in Windows 2000 Professional, so that the Open dialog box looks like it did in Windows NT 4.0 and earlier. These policies only affect programs that use the standard Open dialog box provided to developers of Windows programs.
# 
# To see an example of the standard Open dialog box, start Wordpad and, on the File menu, click Open.
# 
# Note: In Windows Vista, this policy  setting applies only to applications that are using the Windows XP common dialog box style. This policy setting does not apply to the new Windows Vista common dialog box style. It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
Hide the dropdown list of recent files:
  lgpo.set:
  - name: NoFileMRU
  - setting: Enabled
  - policy_class: User
