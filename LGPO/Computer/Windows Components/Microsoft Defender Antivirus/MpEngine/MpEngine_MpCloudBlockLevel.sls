# windows:SUPPORTED_Windows_10_0
#
# 
#       This policy setting determines how aggressive Microsoft Defender Antivirus will be in blocking and scanning suspicious files.
# 
#       If this setting is on, Microsoft Defender Antivirus will be more aggressive when identifying suspicious files to block and scan; otherwise, it will be less aggressive and therefore block and scan with less frequency. 
#       
#       For more information about specific values that are supported, see the Microsoft Defender Antivirus documentation site.
# 
#       Note: This feature requires the "Join Microsoft MAPS" setting enabled in order to function.
# 
#       Possible options are:
#       (0x0) Default Microsoft Defender Antivirus blocking level
#       (0x1) Moderate Microsoft Defender Antivirus blocking level, delivers verdict only for high confidence detections
#       (0x2) High blocking level - aggressively block unknowns while optimizing client performance (greater chance of false positives)
#       (0x4) High+ blocking level  aggressively block unknowns and apply additional protection measures (may impact  client performance)
#       (0x6) Zero tolerance blocking level  block all unknown executables
#     
Select cloud protection level:
  lgpo.set:
  - name: MpEngine_MpCloudBlockLevel
  - setting:
      MpCloudBlockLevel: enum-placeholder
  - policy_class: Machine
