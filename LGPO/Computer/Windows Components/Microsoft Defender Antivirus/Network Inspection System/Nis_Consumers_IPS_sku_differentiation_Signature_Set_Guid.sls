# windows:SUPPORTED_Windows8
#
# This policy setting defines additional definition sets to enable for network traffic inspection. Definition set GUIDs should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a definition set GUID. As an example, the definition set GUID to enable test security intelligence is defined as: “{b54b6ac9-a737-498e-9120-6616ad3bf590}”. The value is not used and it is recommended that this be set to 0.
Specify additional definition sets for network traffic inspection:
  lgpo.set:
  - name: Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid
  - setting:
      Nis_Consumers_IPS_sku_differentiation_Signature_Set_GuidList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
