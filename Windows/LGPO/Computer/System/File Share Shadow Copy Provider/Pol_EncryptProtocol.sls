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
# LOCATION: \Computer\System\File Share Shadow Copy Provider\Pol_EncryptProtocol.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled.
# 
# VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.
# 
# By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted. 
# 
# Note: To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service .
? Allow or Disallow use of encryption to protect the RPC protocol messages between
  File Share Shadow Copy Provider running on application server and File Share Shadow
  Copy Agent running on the file servers.
: lgpo.set:
  - name: Pol_EncryptProtocol
  - setting: Enabled
  - policy_class: Machine
