# windows:SUPPORTED_Windows8
#
# This policy setting allows you to disable scheduled and real-time scanning for files under the paths specified or for the fully qualified resources specified. Paths should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a path or a fully qualified resource name. As an example, a path might be defined as: "c:\Windows" to exclude all files in this directory. A fully qualified resource name might be defined as: "C:\Windows\App.exe". The value is not used and it is recommended that this be set to 0.
Path Exclusions:
  lgpo.set:
  - name: Exclusions_Paths
  - setting:
      Exclusions_PathsList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
