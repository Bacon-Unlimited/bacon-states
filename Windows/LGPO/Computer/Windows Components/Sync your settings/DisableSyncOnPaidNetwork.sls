# windows:SUPPORTED_Windows8
#
# Prevent syncing to and from this PC when on metered Internet connections.  This turns off and disables "sync your settings on metered connections" switch on the "sync your settings" page in PC Settings.
# 
# If you enable this policy setting, syncing on metered connections will be turned off, and no syncing will take place when this PC is on a metered connection.
# 
# If you do not set or disable this setting, syncing on metered connections is configurable by the user.
#       
Do not sync on metered connections:
  lgpo.set:
  - name: DisableSyncOnPaidNetwork
  - setting: Enabled
  - policy_class: Machine
