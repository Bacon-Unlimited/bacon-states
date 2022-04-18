# windows:SUPPORTED_Windows7
#
# Specifies the location where symbolic links are created to the current version of a per-user published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %localappdata%\Microsoft\AppV\Client\Integration.
Integration Root User:
  lgpo.set:
  - name: Integration_Root_User
  - setting:
      Integration_Root_User_Prompt: text-placeholder
  - policy_class: Machine
