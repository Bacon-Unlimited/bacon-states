# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the network latency and throughput thresholds that will cause a client computers to transition files and folders that are already available offline to the slow-link mode so that the user's access to this data is not degraded due to network slowness. When Offline Files is operating in the slow-link mode, all network file requests are satisfied from the Offline Files cache. This is similar to a user working offline.
# 
# If you enable this policy setting, Offline Files uses the slow-link mode if the network throughput between the client and the server is below (slower than) the Throughput threshold parameter, or if the round-trip network latency is above (slower than) the Latency threshold parameter.
# 
# You can configure the slow-link mode by specifying threshold values for Throughput (in bits per second) and/or Latency (in milliseconds) for specific UNC paths. We recommend that you always specify a value for Latency, since the round-trip network latency detection is faster. You can use wildcard characters (*) for specifying UNC paths. If you do not specify a Latency or Throughput value, computers running Windows Vista or Windows Server 2008 will not use the slow-link mode.
# 
# If you do not configure this policy setting, computers running Windows Vista or Windows Server 2008 will not transition a shared folder to the slow-link mode. Computers running Windows 7 or Windows Server 2008 R2 will use the default latency value of 80 milliseconds when transitioning a folder to the slow-link mode. Computers running Windows 8 or Windows Server 2012 will use the default latency value of 35 milliseconds when transitioning a folder to the slow-link mode. To avoid extra charges on cell phone or broadband plans, it may be necessary to configure the latency threshold to be lower than the round-trip network latency.
# 
# In Windows Vista or Windows Server 2008, once transitioned to slow-link mode, users will continue to operate in slow-link mode until the user clicks the Work Online button on the toolbar in Windows Explorer. Data will only be synchronized to the server if the user manually initiates synchronization by using Sync Center.
# 
# In Windows 7, Windows Server 2008 R2, Windows 8 or Windows Server 2012, when operating in slow-link mode Offline Files synchronizes the user's files in the background at regular intervals, or as configured by the "Configure Background Sync" policy. While in slow-link mode, Windows periodically checks the connection to the folder and brings the folder back online if network speeds improve.
# 
# In Windows 8 or Windows Server 2012, set the Latency threshold to 1ms to keep users always working offline in slow-link mode.
# 
# If you disable this policy setting, computers will not use the slow-link mode.
Configure slow-link mode:
  lgpo.set:
  - name: Pol_SlowLinkSettings
  - setting:
      Lbl_SlowLinkSettingsList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
