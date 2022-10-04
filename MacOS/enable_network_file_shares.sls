##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state enables serving network file shares by enabling the services on macOS.
Enable Apple File Server:
  service.enabled:
    - name: com.apple.AppleFileServer
    - onlyif:
      - fun: service.available
        name: com.apple.AppleFileServer

Enable SMB:
  service.enabled:
    - name: com.apple.smbd
    - onlyif:
      - fun: service.available
        name: com.apple.smbd

Enable NFS:
  # NFS is running/loaded by default in macOS Big Sur
  service.running:
    - name: com.apple.nfsd
    - enable: True
    - onlyif:
      - fun: service.available
        name: com.apple.nfsd
