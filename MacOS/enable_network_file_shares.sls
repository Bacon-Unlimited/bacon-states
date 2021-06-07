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
