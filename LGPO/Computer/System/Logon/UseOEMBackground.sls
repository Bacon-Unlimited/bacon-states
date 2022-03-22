# windows:SUPPORTED_Windows7Only
#
# This policy setting ignores Windows Logon Background.
# 
# This policy setting may be used to make Windows give preference to a custom logon background. 
# 
# If you enable this policy setting, the logon screen always attempts to load a custom background instead of the Windows-branded logon background. 
# 
# If you disable or do not configure this policy setting, Windows uses the default Windows logon background or custom background.
Always use custom logon background:
  lgpo.set:
  - name: UseOEMBackground
  - setting: Enabled
  - policy_class: Machine
