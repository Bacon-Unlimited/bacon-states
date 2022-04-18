# windows:SUPPORTED_WindowsVista
#
# This policy setting controls which UI language is used for computers with more than one UI language installed.
# 
# If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language. If the specified language is not installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the local administrator.
# 
# If you disable or do not configure this policy setting, there is no restriction of a specific language used for the Windows menus and dialogs.
Force selected system UI language to overwrite the user UI language:
  lgpo.set:
  - name: MachineUILanguageOverwrite
  - setting: Enabled
  - policy_class: Machine
