# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off Microsoft Defender Antivirus.
#     
#     If you enable this policy setting, Microsoft Defender Antivirus does not run, and will not scan computers for malware or other potentially unwanted software.
# 
#     If you disable this policy setting, Microsoft Defender Antivirus will run regardless of any other installed antivirus product.
# 
#     If you do not configure this policy setting, Windows will internally manage Microsoft Defender Antivirus. If you install another antivirus program, Windows automatically disables Microsoft Defender Antivirus. Otherwise, Microsoft Defender Antivirus will scan your computers for malware and other potentially unwanted software.
# 
#     Enabling or disabling this policy may lead to unexpected or unsupported behavior. It is recommended that you leave this policy setting unconfigured.
Turn off Microsoft Defender Antivirus:
  lgpo.set:
  - name: DisableAntiSpywareDefender
  - setting: Enabled
  - policy_class: Machine
