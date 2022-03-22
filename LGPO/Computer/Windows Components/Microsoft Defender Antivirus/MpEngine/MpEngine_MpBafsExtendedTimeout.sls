# windows:SUPPORTED_Windows_10_0
#
# 
#       This feature allows Microsoft Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe.
#       
#       The typical cloud check timeout is 10 seconds. To enable the extended cloud check feature, specify the extended time in seconds, up to an additional 50 seconds.
# 
#       For example, if the desired timeout is 60 seconds, specify 50 seconds in this setting, which will enable the extended cloud check feature, and will raise the total time to 60 seconds.
# 
#       Note: This feature depends on three other MAPS settings - "Configure the 'Block at First Sight' feature; "Join Microsoft MAPS"; "Send file samples when further analysis is required" all need to be enabled.
#     
Configure extended cloud check:
  lgpo.set:
  - name: MpEngine_MpBafsExtendedTimeout
  - setting:
      MpBafsExtendedTimeout: decimal-placeholder
  - policy_class: Machine
