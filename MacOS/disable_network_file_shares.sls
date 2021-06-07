##os: macos
################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

# This state disables serving network file shares by disabling the services on macOS.
# Note this does not prevent mounting network file shares.  The nfsconf service is protected by SIP.
Disable Apple File Server:
  service.dead:
    - name: com.apple.AppleFileServer
    - enable: False 
    - onlyif:
      - fun: service.available
        name: com.apple.AppleFileServer

Disable SMB:
  service.dead:
    - name: com.apple.smbd
    - enable: False 
    - onlyif:
      - fun: service.available
        name: com.apple.smbd

Disable NFS:
  service.dead:
    - name: com.apple.nfsd
    - enable: False 
    - onlyif:
      - fun: service.available
        name: com.apple.nfsd
