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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Temporary folders\TS_TEMP_PER_SESSION.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to prevent Remote Desktop Services from creating session-specific temporary folders.
# 
# You can use this policy setting to disable the creation of separate temporary folders on a remote computer for each session. By default, Remote Desktop Services creates a separate temporary folder for each active session that a user maintains on a remote computer. These temporary folders are created on the remote computer in a Temp folder under the user's profile folder and are named with the sessionid.
# 
# If you enable this policy setting, per-session temporary folders are not created. Instead, a user's temporary files for all sessions on the remote computer are stored in a common Temp folder under the user's profile folder on the remote computer.
# 
# If you disable this policy setting, per-session temporary folders are always created, even if the server administrator specifies otherwise.
# 
# If you do not configure this policy setting, per-session temporary folders are created unless the server administrator specifies otherwise.
# 
Do not use temporary folders per session:
  lgpo.set:
  - name: TS_TEMP_PER_SESSION
  - setting: Enabled
  - policy_class: Machine
