# windows:SUPPORTED_Windows_10_0_RS1
#
# 
#         Enable or disable detection for potentially unwanted applications. You can choose to block, audit, or allow when potentially unwanted software is being downloaded or attempts to install itself on your computer.
# 
#         Enabled:
#         Specify the mode in the Options section:
#         -Block: Potentially unwanted software will be blocked.
#         -Audit Mode: Potentially unwanted software will not be blocked, however if this feature would have blocked access if it were set to Block, then a record of the event will be in the event logs.
# 
#         Disabled:
#         Potentially unwanted software will not be blocked.
# 
#         Not configured:
#         Same as Disabled.
#     
Configure detection for potentially unwanted applications:
  lgpo.set:
  - name: Root_PUAProtection
  - setting:
      Root_PUAProtection: enum-placeholder
  - policy_class: Machine
