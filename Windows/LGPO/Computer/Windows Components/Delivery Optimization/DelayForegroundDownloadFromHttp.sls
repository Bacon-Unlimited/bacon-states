# windows:SUPPORTED_Windows_10_0
#
# This policy allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use P2P.
# 
# After the max delay has reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that could not be downloaded from Peers.
# 
# Note that a download that is waiting for peer sources, will appear to be stuck for the end user.
# 
# The recommended value is 1 minute (60).
Delay Foreground download from http (in secs):
  lgpo.set:
  - name: DelayForegroundDownloadFromHttp
  - setting:
      DelayForegroundDownloadFromHttp: decimal-placeholder
  - policy_class: Machine
