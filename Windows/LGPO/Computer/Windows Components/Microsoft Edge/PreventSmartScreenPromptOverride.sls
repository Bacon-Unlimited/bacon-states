# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites.
# 
# If you enable this setting, employees can't ignore Windows Defender SmartScreen warnings and they are blocked from continuing to the site.
# 
# If you disable or don't configure this setting, employees can ignore Windows Defender SmartScreen warnings and continue to the site.
Prevent bypassing Windows Defender SmartScreen prompts for sites:
  lgpo.set:
  - name: PreventSmartScreenPromptOverride
  - setting: Enabled
  - policy_class: Machine
