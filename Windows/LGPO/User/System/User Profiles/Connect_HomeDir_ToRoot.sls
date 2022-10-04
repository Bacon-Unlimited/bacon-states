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
# LOCATION: \User\System\User Profiles\Connect_HomeDir_ToRoot.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting restores the definitions of the %HOMESHARE% and %HOMEPATH% environment variables to those used in Windows NT 4.0 and earlier. Along with %HOMEDRIVE%, these variables define the home directory of a user profile. The home directory is a persistent mapping of a drive letter on the local computer to a local or remote directory.
# 
# If you enable this policy setting, the system uses the Windows NT 4.0 definitions. %HOMESHARE% stores only the network share (such as \\server\share). %HOMEPATH% stores the remainder of the fully qualified path to the home directory (such as \dir1\dir2\homedir). As a result, users can access any directory on the home share by using the home directory drive letter.
# 
# If you disable or do not configure this policy setting, the system uses the definitions introduced with Windows 2000. %HOMESHARE% stores the fully qualified path to the home directory (such as \\server\share\dir1\dir2\homedir). Users can access the home directory and any of its subdirectories from the home drive letter, but they cannot see or access its parent directories. %HOMEPATH% stores a final backslash and is included for compatibility with earlier systems.
Connect home directory to root of the share:
  lgpo.set:
  - name: Connect_HomeDir_ToRoot
  - setting: Enabled
  - policy_class: User
