# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about downloading unverified files.
# 
# If you enable this setting, employees can't ignore Windows Defender SmartScreen warnings and they are blocked from downloading the unverified files.
# 
# If you disable or don't configure this setting, employees can ignore Windows Defender SmartScreen warnings and continue the download process.
Prevent bypassing Windows Defender SmartScreen prompts for files:
  lgpo.set:
  - name: PreventSmartScreenPromptOverrideForFiles
  - setting: Enabled
  - policy_class: User
