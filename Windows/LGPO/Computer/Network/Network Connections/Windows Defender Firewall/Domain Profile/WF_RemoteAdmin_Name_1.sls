# windows:SUPPORTED_WindowsXPSP2
#
# Allows remote administration of this computer using administrative tools such as the Microsoft Management Console (MMC) and Windows Management Instrumentation (WMI). To do this, Windows Defender Firewall opens TCP ports 135 and 445. Services typically use these ports to communicate using remote procedure calls (RPC) and Distributed Component Object Model (DCOM). Additionally, on Windows XP Professional with at least SP2 and Windows Server 2003 with at least SP1, this policy setting also allows SVCHOST.EXE and LSASS.EXE to receive unsolicited incoming messages and allows hosted services to open additional dynamically-assigned ports, typically in the range of 1024 to 1034.  On Windows Vista, this policy setting does not control connections to SVCHOST.EXE and LSASS.EXE.
# 
# If you enable this policy setting, Windows Defender Firewall allows the computer to receive the unsolicited incoming messages associated with remote administration. You must specify the IP addresses or subnets from which these incoming messages are allowed.
# 
# If you disable or do not configure this policy setting, Windows Defender Firewall does not open TCP port 135 or 445. Also, on Windows XP Professional with at least SP2 and Windows Server 2003 with at least SP1, Windows Defender Firewall prevents SVCHOST.EXE and LSASS.EXE from receiving unsolicited incoming messages, and prevents hosted services from opening additional dynamically-assigned ports. Because disabling this policy setting does not block TCP port 445, it does not conflict with the "Windows Defender Firewall: Allow file and printer sharing exception" policy setting.
# 
# Note: Malicious users often attempt to attack networks and computers using RPC and DCOM. We recommend that you contact the manufacturers of your critical programs to determine if they are hosted by SVCHOST.exe or LSASS.exe or if they require RPC and DCOM communication. If they do not, then do not enable this policy setting.
# 
# Note: If any policy setting opens TCP port 445, Windows Defender Firewall allows inbound ICMP echo request messages (the message sent by the Ping utility), even if the "Windows Defender Firewall: Allow ICMP exceptions" policy setting would block them. Policy settings that can open TCP port 445 include "Windows Defender Firewall: Allow inbound file and printer sharing exception," "Windows Defender Firewall: Allow inbound remote administration exception," and "Windows Defender Firewall: Define inbound port exceptions."
'Windows Defender Firewall: Allow inbound remote administration exception ':
  lgpo.set:
  - name: WF_RemoteAdmin_Name_1
  - setting:
      WF_Scope_Name: text-placeholder
  - policy_class: Machine
