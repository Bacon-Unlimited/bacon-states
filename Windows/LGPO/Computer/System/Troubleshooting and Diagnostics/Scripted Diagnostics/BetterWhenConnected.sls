####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Scripted Diagnostics\BetterWhenConnected.sls
#
# SUPPORTED WINDOWS OS
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
