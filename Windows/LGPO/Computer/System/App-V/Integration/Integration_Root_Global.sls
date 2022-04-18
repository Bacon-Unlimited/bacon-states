# windows:SUPPORTED_Windows7
#
# Specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.
Integration Root Global:
  lgpo.set:
  - name: Integration_Root_Global
  - setting:
      Integration_Root_Global_Prompt: text-placeholder
  - policy_class: Machine
