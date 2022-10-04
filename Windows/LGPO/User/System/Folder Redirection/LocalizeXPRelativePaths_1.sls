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
# LOCATION: \User\System\Folder Redirection\LocalizeXPRelativePaths_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows the administrator to define whether Folder Redirection should use localized names for the All Programs, Startup, My Music, My Pictures, and My Videos subfolders when redirecting the parent Start Menu and legacy My Documents folder respectively.
# 
# If you enable this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use localized folder names for these subfolders when redirecting the Start Menu or legacy My Documents folder.
# 
# If you disable or not configure this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use the standard English names for these subfolders when redirecting the Start Menu or legacy My Documents folder.
# 
# Note: This policy is valid only on Windows Vista, Windows 7, Windows 8, and Windows Server 2012 when it processes a legacy redirection policy already deployed for these folders in your existing localized environment.
Use localized subfolder names when redirecting Start Menu and My Documents:
  lgpo.set:
  - name: LocalizeXPRelativePaths_1
  - setting: Enabled
  - policy_class: User
