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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Profiles\TS_USER_HOME.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# Specifies whether Remote Desktop Services uses the specified network share or local directory path as the root of the user's home directory for a Remote Desktop Services session.
# 
# To use this setting, select the location for the home directory (network or local) from the Location drop-down list. If you choose to place the directory on a network share, type the Home Dir Root Path in the form \\Computername\Sharename, and then select the drive letter to which you want the network share to be mapped.
# 
# If you choose to keep the home directory on the local computer, type the Home Dir Root Path in the form "Drive:\Path" (without quotes), without environment variables or ellipses. Do not specify a placeholder for user alias, because Remote Desktop Services automatically appends this at logon.
# 
# Note: The Drive Letter field is ignored if you choose to specify a local path. If you choose to specify a local path but then type the name of a network share in Home Dir Root Path, Remote Desktop Services places user home directories in the network location.
# 
# If the status is set to Enabled, Remote Desktop Services creates the user's home directory in the specified location on the local computer or the network. The home directory path for each user is the specified Home Dir Root Path and the user's alias.
# 
# If the status is set to Disabled or Not Configured, the user's home directory is as specified at the server.
Set Remote Desktop Services User Home Directory:
  lgpo.set:
  - name: TS_USER_HOME
  - setting:
      TS_DRIVE_LETTER: enum-placeholder
      TS_HOME_DIR: text-placeholder
      TS_USER_HOME_LOCATION: enum-placeholder
  - policy_class: Machine
