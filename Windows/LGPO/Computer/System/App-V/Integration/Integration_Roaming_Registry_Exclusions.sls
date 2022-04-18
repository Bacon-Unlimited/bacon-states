# windows:SUPPORTED_Windows7
#
# Specifies the registry paths that do not roam with a user profile. Example usage: /REGISTRYEXCLUSIONLIST=software\classes;software\clients.
Roaming Registry Exclusions:
  lgpo.set:
  - name: Integration_Roaming_Registry_Exclusions
  - setting:
      Integration_Roaming_Registry_Exclusions_Prompt: text-placeholder
  - policy_class: Machine
