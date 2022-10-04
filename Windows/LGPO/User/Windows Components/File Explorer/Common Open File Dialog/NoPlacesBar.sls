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
# LOCATION: \User\Windows Components\File Explorer\Common Open File Dialog\NoPlacesBar.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Removes the shortcut bar from the Open dialog box.
# 
# This setting, and others in this folder, lets you remove new features added in Windows 2000 Professional, so that the Open dialog box looks like it did in Windows NT 4.0 and earlier. These policies only affect programs that use the standard Open dialog box provided to developers of Windows programs.
# 
# To see an example of the standard Open dialog box, start Wordpad and, on the File menu, click Open.
# 
# Note: In Windows Vista, this policy  setting applies only to applications that are using the Windows XP common dialog box style. This policy setting does not apply to the new Windows Vista common dialog box style. It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
Hide the common dialog places bar:
  lgpo.set:
  - name: NoPlacesBar
  - setting: Enabled
  - policy_class: User
