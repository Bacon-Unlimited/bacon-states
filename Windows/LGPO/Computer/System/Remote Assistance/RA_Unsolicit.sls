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
# LOCATION: \Computer\System\Remote Assistance\RA_Unsolicit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to turn on or turn off Offer (Unsolicited) Remote Assistance on this computer.
# 
# If you enable this policy setting, users on this computer can get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.
# 
# If you disable this policy setting, users on this computer cannot get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.
# 
# If you do not configure this policy setting, users on this computer cannot get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.
# 
# If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer." When you configure this policy setting, you also specify the list of users or user groups that are allowed to offer remote assistance.
# 
# To configure the list of helpers, click "Show." In the window that opens, you can enter the names of the helpers. Add each user or group one by one. When you enter the name of the helper user or user groups, use the following format:
# 
# <Domain Name>\<User Name> or
# 
# <Domain Name>\<Group Name>
# 
# If you enable this policy setting, you should also enable firewall exceptions to allow Remote Assistance communications. The firewall exceptions required for Offer (Unsolicited) Remote Assistance depend on the version of Windows you are running.
# 
# Windows Vista and later
# 
# Enable the Remote Assistance exception for the domain profile. The exception must contain:
# Port 135:TCP
# %WINDIR%\System32\msra.exe
# %WINDIR%\System32\raserver.exe
# 
# Windows XP with Service Pack 2 (SP2) and Windows XP Professional x64 Edition with Service Pack 1 (SP1)
# 
# Port 135:TCP
# %WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
# %WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
# %WINDIR%\System32\Sessmgr.exe
# 
# For computers running Windows Server 2003 with Service Pack 1 (SP1)
# 
# Port 135:TCP
# %WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
# %WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
# Allow Remote Desktop Exception
Configure Offer Remote Assistance:
  lgpo.set:
  - name: RA_Unsolicit
  - setting:
      RA_Unsolicit_Control_List: enum-placeholder
      RA_Unsolicit_DACL_Edit:
      - placeholder1
      - placeholder2
  - policy_class: Machine
