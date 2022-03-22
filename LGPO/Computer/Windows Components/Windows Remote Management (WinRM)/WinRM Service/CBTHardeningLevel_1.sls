# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to set the hardening level of the Windows Remote Management (WinRM) service with regard to channel binding tokens.
# 
#         If you enable this policy setting, the WinRM service uses the level specified in HardeningLevel to determine whether or not to accept a received request, based on a supplied channel binding token.
# 
#         If you disable or do not configure this policy setting, you can configure the hardening level locally on each computer.
# 
#         If HardeningLevel is set to Strict, any request not containing a valid channel binding token is rejected.
# 
#         If HardeningLevel is set to Relaxed (default value), any request containing an invalid channel binding token is rejected. However, a request that does not contain a channel binding token is accepted (though it is not protected from credential-forwarding attacks).
# 
#         If HardeningLevel is set to None, all requests are accepted (though they are not protected from credential-forwarding attacks).
#       
Specify channel binding token hardening level:
  lgpo.set:
  - name: CBTHardeningLevel_1
  - setting:
      HardeningLevelCombo: enum-placeholder
  - policy_class: Machine
