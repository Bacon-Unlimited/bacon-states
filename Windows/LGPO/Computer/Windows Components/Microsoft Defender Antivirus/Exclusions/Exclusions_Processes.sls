# windows:SUPPORTED_Windows8
#
# This policy setting allows you to disable scheduled and real-time scanning for any file opened by any of the specified processes. The process itself will not be excluded. To exclude the process, use the Path exclusion. Processes should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the path to the process image. Note that only executables can be excluded. For example, a process might be defined as: "c:\windows\app.exe". The value is not used and it is recommended that this be set to 0.
Process Exclusions:
  lgpo.set:
  - name: Exclusions_Processes
  - setting:
      Exclusions_ProcessesList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
