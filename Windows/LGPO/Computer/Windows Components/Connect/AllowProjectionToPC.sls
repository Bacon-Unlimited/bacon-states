# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting allows you to turn off projection to a PC.  
# 
#  
# 
# If you turn it on, your PC isn't discoverable and can't be projected to except if the user manually launches the Connect app.  
# 
#  
# 
# If you turn it off or don't configure it, your PC is discoverable and can be projected to above lock screen only. The user has an option to turn it always on or off except for manual launch, too.
Don't allow this PC to be projected to:
  lgpo.set:
  - name: AllowProjectionToPC
  - setting: Enabled
  - policy_class: Machine
