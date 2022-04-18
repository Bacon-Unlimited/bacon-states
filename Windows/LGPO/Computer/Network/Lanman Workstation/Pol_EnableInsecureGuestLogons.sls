# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines if the SMB client will allow insecure guest logons to an SMB server.
# 
# If you enable this policy setting or if you do not configure this policy setting, the SMB client will allow insecure guest logons.
# 
# If you disable this policy setting, the SMB client will reject insecure guest logons.
# 
# Insecure guest logons are used by file servers to allow unauthenticated access to shared folders. While uncommon in an enterprise environment, insecure guest logons are frequently used by consumer Network Attached Storage (NAS) appliances acting as file servers. Windows file servers require authentication and do not use insecure guest logons by default. Since insecure guest logons are unauthenticated, important security features such as SMB Signing and SMB Encryption are disabled. As a result, clients that allow insecure guest logons are vulnerable to a variety of man-in-the-middle attacks that can result in data loss, data corruption, and exposure to malware. Additionally, any data written to a file server using an insecure guest logon is potentially accessible to anyone on the network. Microsoft recommends disabling insecure guest logons and configuring file servers to require authenticated access."
#       
Enable insecure guest logons:
  lgpo.set:
  - name: Pol_EnableInsecureGuestLogons
  - setting: Enabled
  - policy_class: Machine
