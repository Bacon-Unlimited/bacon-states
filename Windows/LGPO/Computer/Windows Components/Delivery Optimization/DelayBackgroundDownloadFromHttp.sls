# windows:SUPPORTED_Windows_10_0
#
# This policy allows you to delay the use of an HTTP source in a background download that is allowed to use P2P.
# 
# After the max delay has reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that could not be downloaded from Peers.
# 
# Note that a download that is waiting for peer sources, will appear to be stuck for the end user.
# 
# The recommended value is 1 hour (3600).
Delay background download from http (in secs):
  lgpo.set:
  - name: DelayBackgroundDownloadFromHttp
  - setting:
      DelayBackgroundDownloadFromHttp: decimal-placeholder
  - policy_class: Machine
