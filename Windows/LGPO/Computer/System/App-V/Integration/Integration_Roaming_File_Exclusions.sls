# windows:SUPPORTED_Windows7
#
# Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: /FILEEXCLUSIONLIST='desktop;my pictures'.
Roaming File Exclusions:
  lgpo.set:
  - name: Integration_Roaming_File_Exclusions
  - setting:
      Integration_Roaming_File_Exclusions_Prompt: text-placeholder
  - policy_class: Machine
