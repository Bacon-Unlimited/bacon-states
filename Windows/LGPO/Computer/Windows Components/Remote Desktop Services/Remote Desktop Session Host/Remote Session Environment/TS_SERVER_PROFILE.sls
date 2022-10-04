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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_SERVER_PROFILE.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows the administrator to configure the RemoteFX experience for Remote Desktop Session Host or Remote Desktop Virtualization Host servers. By default, the system will choose the best experience based on available nework bandwidth.
# 
# If you enable this policy setting, the RemoteFX experience could be set to one of the following options:
# 1. Let the system choose the experience for the network condition
# 2. Optimize for server scalability
# 3. Optimize for minimum bandwidth usage
# 
# If you disable or do not configure this policy setting, the RemoteFX experience will change dynamically based on the network condition."
#     
Configure RemoteFX Adaptive Graphics:
  lgpo.set:
  - name: TS_SERVER_PROFILE
  - setting:
      TS_SERVER_PROFILE_LEVELS: enum-placeholder
  - policy_class: Machine
