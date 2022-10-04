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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates\SignatureUpdate_DefinitionUpdateFileSharesSources.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure UNC file share sources for downloading security intelligence updates. Sources will be contacted in the order specified. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources. For example: "{\\unc1 | \\unc2 }". The list is empty by default.
# 
#     If you enable this setting, the specified sources will be contacted for security intelligence updates. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list will not be contacted.
# 
#     If you disable or do not configure this setting, the list will remain empty by default and no sources will be contacted.
Define file shares for downloading security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_DefinitionUpdateFileSharesSources
  - setting:
      SignatureUpdate_DefinitionUpdateFileSharesSources: text-placeholder
  - policy_class: Machine
