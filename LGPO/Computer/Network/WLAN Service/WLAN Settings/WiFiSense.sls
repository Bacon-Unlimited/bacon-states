# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting determines whether users can enable the following WLAN settings: "Connect to suggested open hotspots," "Connect to networks shared by my contacts," and "Enable paid services".
# 
# "Connect to suggested open hotspots" enables Windows to automatically connect users to open hotspots it knows about by crowdsourcing networks that other people using Windows have connected to.
# 
# "Connect to networks shared by my contacts" enables Windows to automatically connect to networks that the user's contacts have shared with them, and enables users on this device to share networks with their contacts.
# 
# "Enable paid services" enables Windows to temporarily connect to open hotspots to determine if paid services are available.
# 
# If this policy setting is disabled, both "Connect to suggested open hotspots," "Connect to networks shared by my contacts," and "Enable paid services" will be turned off and users on this device will be prevented from enabling them.
# 
# If this policy setting is not configured or is enabled, users can choose to enable or disable either "Connect to suggested open hotspots"  or "Connect to networks shared by my contacts".
#       
? Allow Windows to automatically connect to suggested open hotspots, to networks shared
  by contacts, and to hotspots offering paid services
: lgpo.set:
  - name: WiFiSense
  - setting: Enabled
  - policy_class: Machine
