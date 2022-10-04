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
# LOCATION: \Computer\System\User Profiles\SlowLinkDefault.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to wait for the remote copy of the roaming user profile to load, even when loading is slow. Also, the system waits for the remote copy when the user is notified about a slow connection, but does not respond in the time allowed.
# 
# This policy setting and related policy settings in this folder together define the system's response when roaming user profiles are slow to load.
# 
# If you enable this policy setting, the system waits for the remote copy of the roaming user profile to load, even when loading is slow.
# 
# If you disable this policy setting or do not configure it, when a remote profile is slow to load, the system loads the local copy of the roaming user profile. The local copy is also used when the user is consulted (as set in the "Prompt user when slow link is detected" policy setting), but does not respond in the time allowed (as set in the "Timeout for dialog boxes" policy setting).
# 
# Waiting for the remote profile is appropriate when users move between computers frequently and the local copy of their profile is not always current. Using the local copy is desirable when quick logging on is a priority.
# 
# Important: If the "Do not detect slow network connections" policy setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.
Wait for remote user profile:
  lgpo.set:
  - name: SlowLinkDefault
  - setting: Enabled
  - policy_class: Machine
