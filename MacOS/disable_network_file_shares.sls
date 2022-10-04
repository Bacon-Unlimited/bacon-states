##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

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
