# windows:SUPPORTED_WindowsXPOnly
#
# Configures the threshold value at which Offline Files considers a network connection to be "slow". Any network speed below this value is considered to be slow.
# 
# When a connection is considered slow, Offline Files automatically adjust its behavior to avoid excessive synchronization traffic and will not automatically reconnect to a server when the presence of a server is detected.
# 
# If you enable this setting, you can configure the threshold value that will be used to determine a slow network connection.
# 
# If this setting is disabled or not configured, the default threshold value of 64,000 bps is used to determine if a network connection is considered to be slow.
# 
# Note: Use the following formula when entering the slow link value: [ bps / 100]. For example, if you want to set a threshold value of 128,000 bps, enter a value of 1280.
Configure Slow link speed:
  lgpo.set:
  - name: Pol_SlowLinkSpeed
  - setting:
      Lbl_SlowLinkSpeedSpin: decimal-placeholder
  - policy_class: Machine
