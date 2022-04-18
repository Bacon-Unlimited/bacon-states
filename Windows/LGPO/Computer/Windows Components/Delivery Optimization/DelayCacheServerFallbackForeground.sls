# windows:SUPPORTED_Windows_10_0
#
# Set this policy to delay the fallback from Cache Server to the HTTP source for a foreground content download by X seconds.
# 
# Note: if you set the policy to delay foreground download from http, it will apply first (to allow downloads from peers first).
Delay Foreground download Cache Server fallback (in seconds):
  lgpo.set:
  - name: DelayCacheServerFallbackForeground
  - setting:
      DelayCacheServerFallbackForeground: decimal-placeholder
  - policy_class: Machine
