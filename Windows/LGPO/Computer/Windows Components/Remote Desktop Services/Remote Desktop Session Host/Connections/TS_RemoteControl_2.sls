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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_RemoteControl_2.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_ONLY_LEGACY
#
# If you enable this policy setting, administrators can interact with a user's Remote Desktop Services session based on the option selected. Select the desired level of control and permission from the options list:
# 
# 1. No remote control allowed: Disallows an administrator to use remote control or view a remote user session.
# 2. Full Control with user's permission: Allows the administrator to interact with the session, with the user's consent.
# 3. Full Control without user's permission: Allows the administrator to interact with the session, without the user's consent.
# 4. View Session with user's permission: Allows the administrator to watch the session of a remote user with the user's consent. 
# 5. View Session without user's permission: Allows the administrator to watch the session of a remote user without the user's consent.
# 
# If you disable this policy setting, administrators can interact with a user's Remote Desktop Services session, with the user's consent.
Set rules for remote control of Remote Desktop Services user sessions:
  lgpo.set:
  - name: TS_RemoteControl_2
  - setting:
      TS_RemoteControl_Levels: enum-placeholder
  - policy_class: Machine
