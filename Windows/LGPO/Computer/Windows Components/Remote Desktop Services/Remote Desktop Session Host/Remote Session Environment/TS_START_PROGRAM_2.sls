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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_START_PROGRAM_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# Configures Remote Desktop Services to run a specified program automatically upon connection.
# 
# You can use this setting to specify a program to run automatically when a user logs on to a remote computer.
# 
# By default, Remote Desktop Services sessions provide access to the full Windows desktop, unless otherwise specified with this setting, by the server administrator, or by the user in configuring the client connection. Enabling this setting overrides the "Start Program" settings set by the server administrator or user. The Start menu and Windows Desktop are not displayed, and when the user exits the program the session is automatically logged off.
# 
# To use this setting, in Program path and file name, type the fully qualified path and file name of the executable file to be run when the user logs on. If necessary, in Working Directory, type the fully qualified path to the starting directory for the program. If you leave Working Directory blank, the program runs with its default working directory. If the specified program path, file name, or working directory is not the name of a valid directory, the RD Session Host server connection fails with an error message.
# 
# If the status is set to Enabled, Remote Desktop Services sessions automatically run the specified program and use the specified Working Directory (or the program default directory, if Working Directory is not specified) as the working directory for the program.
# 
# If the status is set to Disabled or Not Configured, Remote Desktop Services sessions start with the full desktop, unless the server administrator or user specify otherwise. (See "Computer Configuration\Administrative Templates\System\Logon\Run these programs at user logon" setting.)
# 
# Note: This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting overrides.
Start a program on connection:
  lgpo.set:
  - name: TS_START_PROGRAM_2
  - setting:
      TS_PROGRAM_NAME: text-placeholder
      TS_WORKDIR: text-placeholder
  - policy_class: Machine
