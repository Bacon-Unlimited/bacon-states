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
# LOCATION: \Computer\System\Remote Assistance\RA_EncryptedTicketOnly.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting enables Remote Assistance invitations to be generated with improved encryption so that only computers running this version (or later versions) of the operating system can connect. This policy setting does not affect Remote Assistance connections that are initiated by instant messaging contacts or the unsolicited Offer Remote Assistance.
# 
# If you enable this policy setting, only computers running this version (or later versions) of the operating system can connect to this computer.
# 
# If you disable this policy setting, computers running this version and a previous version of the operating system can connect to this computer.
# 
# If you do not configure this policy setting, users can configure the setting in System Properties in the Control Panel.
Allow only Windows Vista or later connections:
  lgpo.set:
  - name: RA_EncryptedTicketOnly
  - setting: Enabled
  - policy_class: Machine
