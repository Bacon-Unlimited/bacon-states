# windows:SUPPORTED_Windows8
#
# 
# This policy setting specifies the network locations that will be used for the repair of operating system corruption and for enabling optional features that have had their payload files removed.
# 
# If you enable this policy setting and specify the new location, the files in that location will be used to repair operating system corruption and for enabling optional features that have had their payload files removed. You must enter the fully qualified path to the new location in the ""Alternate source file path"" text box. Multiple locations can be specified when each path is separated by a semicolon. 
# 
# The network location can be either a folder, or a WIM file. If it is a WIM file, the location should be specified by prefixing the path with “wim:” and include the index of the image to use in the WIM file. For example “wim:\\server\share\install.wim:3”.
# 
# If you disable or do not configure this policy setting, or if the required files cannot be found at the locations specified in this policy setting, the files will be downloaded from Windows Update, if that is allowed by the policy settings for the computer.
#       
Specify settings for optional component installation and component repair:
  lgpo.set:
  - name: Servicing
  - setting:
      CheckBox_NeverUseWU: boolean-placeholder
      CheckBox_SidestepWSUS: boolean-placeholder
      LocalSourcePath_TextBox: text-placeholder
  - policy_class: Machine
