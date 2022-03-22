# windows:SUPPORTED_Win2k
#
# This policy setting defines a slow connection for purposes of applying and updating Group Policy.
# 
# If the rate at which data is transferred from the domain controller providing a policy update to the computers in this group is slower than the rate specified by this setting, the system considers the connection to be slow.
# 
# The system's response to a slow policy connection varies among policies. The program implementing the policy can specify the response to a slow link. Also, the policy processing settings in this folder lets you override the programs' specified responses to slow links.
# 
# If you enable this setting, you can, in the "Connection speed" box, type a decimal number between 0 and 4,294,967,200, indicating a transfer rate in kilobits per second. Any connection slower than this rate is considered to be slow. If you type 0, all connections are considered to be fast.
# 
# If you disable this setting or do not configure it, the system uses the default value of 500 kilobits per second.
# 
# This setting appears in the Computer Configuration and User Configuration folders. The setting in Computer Configuration defines a slow link for policies in the Computer Configuration folder. The setting in User Configuration defines a slow link for settings in the User Configuration folder.
# 
# Also, see the "Do not detect slow network connections" and related policies in Computer Configuration\Administrative Templates\System\User Profile. Note: If the profile server has IP connectivity, the connection speed setting is used. If the profile server does not have IP connectivity, the SMB timing is used.
Configure Group Policy slow link detection:
  lgpo.set:
  - name: GPTransferRate_1
  - setting:
      TransferRateOp1: decimal-placeholder
  - policy_class: User
