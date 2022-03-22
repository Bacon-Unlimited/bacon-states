# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy setting determines whether Windows will soft-disconnect a computer from a network.
# 
# If this policy setting is enabled or not configured, Windows will soft-disconnect a computer from a network when it determines that the computer should no longer be connected to a network.
# 
# If this policy setting is disabled, Windows will disconnect a computer from a network immediately when it determines that the computer should no longer be connected to a network.
# 
# When soft disconnect is enabled:
# - When Windows decides that the computer should no longer be connected to a network, it waits for traffic to settle on that network. The existing TCP session will continue uninterrupted.
# - Windows then checks the traffic level on the network periodically. If the traffic level is above a certain threshold, no further action is taken. The computer stays connected to the network and continues to use it. For example, if the network connection is currently being used to download files from the Internet, the files will continue to be downloaded using that network connection.
# - When the network traffic drops below this threshold, the computer will be disconnected from the network. Apps that keep a network connection active even when they’re not actively using it (for example, email apps) might lose their connection. If this happens, these apps should re-establish their connection over a different network.
# 
# This policy setting depends on other group policy settings. For example, if 'Minimize the number of simultaneous connections to the Internet or a Windows Domain' is disabled, Windows will not disconnect from any networks.
#       
Enable Windows to soft-disconnect a computer from a network:
  lgpo.set:
  - name: WCM_EnableSoftDisconnect
  - setting: Enabled
  - policy_class: Machine
