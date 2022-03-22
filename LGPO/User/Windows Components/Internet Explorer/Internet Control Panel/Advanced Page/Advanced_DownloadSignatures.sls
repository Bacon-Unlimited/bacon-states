# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer checks for digital signatures (which identifies the publisher of signed software and verifies it hasn't been modified or tampered with) on user computers before downloading executable programs.
# 
# If you enable this policy setting, Internet Explorer will check the digital signatures of executable programs and display their identities before downloading them to user computers.
# 
# If you disable this policy setting, Internet Explorer will not check the digital signatures of executable programs or display their identities before downloading them to user computers.
# 
# If you do not configure this policy, Internet Explorer will not check the digital signatures of executable programs or display their identities before downloading them to user computers.
Check for signatures on downloaded programs:
  lgpo.set:
  - name: Advanced_DownloadSignatures
  - setting: Enabled
  - policy_class: User
