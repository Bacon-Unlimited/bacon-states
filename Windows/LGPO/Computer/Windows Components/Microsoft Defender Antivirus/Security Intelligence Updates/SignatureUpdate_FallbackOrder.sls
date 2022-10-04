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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates\SignatureUpdate_FallbackOrder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to define the order in which different security intelligence update sources should be contacted. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources in order. Possible values are: InternalDefinitionUpdateServer, MicrosoftUpdateServer, MMPC, and FileShares
# 
#     For example: { InternalDefinitionUpdateServer | MicrosoftUpdateServer | MMPC }
# 
#     If you enable this setting, security intelligence update sources will be contacted in the order specified. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list will not be contacted.
# 
#     If you disable or do not configure this setting, security intelligence update sources will be contacted in a default order.
Define the order of sources for downloading security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_FallbackOrder
  - setting:
      SignatureUpdate_FallbackOrder: text-placeholder
  - policy_class: Machine
