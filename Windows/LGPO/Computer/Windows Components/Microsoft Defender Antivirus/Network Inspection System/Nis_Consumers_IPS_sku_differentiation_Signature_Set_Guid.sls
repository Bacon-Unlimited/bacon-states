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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Network Inspection System\Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting defines additional definition sets to enable for network traffic inspection. Definition set GUIDs should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a definition set GUID. As an example, the definition set GUID to enable test security intelligence is defined as: {b54b6ac9-a737-498e-9120-6616ad3bf590}. The value is not used and it is recommended that this be set to 0.
Specify additional definition sets for network traffic inspection:
  lgpo.set:
  - name: Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid
  - setting:
      Nis_Consumers_IPS_sku_differentiation_Signature_Set_GuidList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
