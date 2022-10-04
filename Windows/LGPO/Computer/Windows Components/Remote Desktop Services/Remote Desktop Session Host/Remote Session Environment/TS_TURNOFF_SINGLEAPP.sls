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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_TURNOFF_SINGLEAPP.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k3_Sp1
#
# This policy setting determines whether the desktop is always displayed after a client connects to a remote computer or an initial program can run. It can be used to require that the desktop be displayed after a client connects to a remote computer, even if an initial program is already specified in the default user profile, Remote Desktop Connection, Remote Desktop Services client, or through Group Policy.
# 
# If you enable this policy setting, the desktop is always displayed when a client connects to a remote computer. This policy setting overrides any initial program policy settings.
# 
# If you disable or do not configure this policy setting, an initial program can be specified that runs on the remote computer after the client connects to the remote computer. If an initial program is not specified, the desktop is always displayed on the remote computer after the client connects to the remote computer.
# 
# Note: If this policy setting is enabled, then the "Start a program on connection" policy setting is ignored.
Always show desktop on connection:
  lgpo.set:
  - name: TS_TURNOFF_SINGLEAPP
  - setting: Enabled
  - policy_class: Machine
