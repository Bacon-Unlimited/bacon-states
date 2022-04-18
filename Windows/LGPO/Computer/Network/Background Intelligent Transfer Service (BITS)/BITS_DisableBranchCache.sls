# SUPPORTED_Windows7OrBITS35
#
# This setting affects whether the BITS client is allowed to use Windows Branch Cache. If the Windows Branch Cache component is installed and enabled on a computer, BITS jobs on that computer can use Windows Branch Cache by default.
# 
#           If you enable this policy setting, the BITS client does not use Windows Branch Cache.
# 
#           If you disable or do not configure this policy setting, the BITS client uses Windows Branch Cache.
# 
#           Note: This policy setting does not affect the use of Windows Branch Cache by applications other than BITS. This policy setting does not apply to BITS transfers over SMB. This setting has no effect if the computer's administrative settings for Windows Branch Cache disable its use entirely.
#       
Do not allow the BITS client to use Windows Branch Cache:
  lgpo.set:
  - name: BITS_DisableBranchCache
  - setting: Enabled
  - policy_class: Machine
