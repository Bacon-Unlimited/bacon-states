# SUPPORTED_WMP8
#
# This policy setting allows you to specify whether network buffering uses the default or a specified number of seconds.
# 
# If you enable this policy setting, select one of the following options to specify the number of seconds streaming media is buffered before it is played.
# 
# - Custom: the number of seconds, up to 60, that streaming media is buffered.
# - Default: default network buffering is used and the number of seconds that is specified is ignored.
# 
# The "Use default buffering" and "Buffer" options on the Performance tab in the Player are not available.
# 
# If you disable or do not configure this policy setting, users can change the buffering options on the Performance tab.
Configure Network Buffering:
  lgpo.set:
  - name: NetworkBuffering
  - setting:
      BufferingTime: enum-placeholder
      NetworkBuffering: decimal-placeholder
  - policy_class: User
