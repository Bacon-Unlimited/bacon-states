# windows:SUPPORTED_Windows7
#
# This policy setting allows users who are connected to the Internet to access and search troubleshooting content that is hosted on Microsoft content servers. Users can access online troubleshooting content from within the Troubleshooting Control Panel UI by clicking "Yes" when they are prompted by a message that states, "Do you want the most up-to-date troubleshooting content?"
# 
# If you enable or do not configure this policy setting, users who are connected to the Internet can access and search troubleshooting content that is hosted on Microsoft content servers from within the Troubleshooting Control Panel user interface.
# 
# If you disable this policy setting, users can only access and search troubleshooting content that is available locally on their computers, even if they are connected to the Internet. They are prevented from connecting to the Microsoft servers that host the Windows Online Troubleshooting Service.
#     
? 'Troubleshooting: Allow users to access online troubleshooting content on Microsoft
  servers from the Troubleshooting Control Panel (via the Windows Online Troubleshooting
  Service - WOTS)'
: lgpo.set:
  - name: BetterWhenConnected
  - setting: Enabled
  - policy_class: Machine
