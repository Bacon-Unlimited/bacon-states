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
# LOCATION: \User\Network\Network Connections\NC_AllowAdvancedTCPIPConfig.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether users can configure advanced TCP/IP settings.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced button on the Internet Protocol (TCP/IP) Properties dialog box is disabled for all users (including administrators). As a result, users cannot open the Advanced TCP/IP Settings Properties page and modify IP settings, such as DNS and WINS server information.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting, the Advanced button is enabled, and all users can open the Advanced TCP/IP Setting dialog box.
# 
# Note: This setting is superseded by settings that prohibit access to properties of connections or connection components. When these policies are set to deny access to the connection properties dialog box or Properties button for connection components, users cannot gain access to the Advanced button for TCP/IP configuration.
# 
# Note: Nonadministrators (excluding Network Configuration Operators) do not have permission to access TCP/IP advanced configuration for a LAN connection, regardless of this setting.
# 
# Tip: To open the Advanced TCP/IP Setting dialog box, in the Network Connections folder, right-click a connection icon, and click Properties. For remote access connections, click the Networking tab.  In the "Components checked are used by this connection" box, click Internet Protocol (TCP/IP), click the Properties button, and then click the Advanced button.
# 
# Note: Changing this setting from Enabled to Not Configured does not enable the Advanced button until the user logs off.
Prohibit TCP/IP advanced configuration:
  lgpo.set:
  - name: NC_AllowAdvancedTCPIPConfig
  - setting: Enabled
  - policy_class: User
