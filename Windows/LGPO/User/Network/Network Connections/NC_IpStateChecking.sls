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
# LOCATION: \User\Network\Network Connections\NC_IpStateChecking.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WindowsXPSP2_WindowsNET
#
# This policy setting allows you to manage whether notifications are shown to the user when a DHCP-configured connection is unable to retrieve an IP address from a DHCP server. This is often signified by the assignment of an automatic private IP address"(i.e. an IP address in the range 169.254.*.*). This indicates that a DHCP server could not be reached or the DHCP server was reached but unable to respond to the request with a valid IP address. By default, a notification is displayed providing the user with information on how the problem can be resolved.
# 
# If you enable this policy setting, this condition will not be reported as an error to the user.
# 
# If you disable or do not configure this policy setting, a DHCP-configured connection that has not been assigned an IP address will be reported via a notification, providing the user with information as to how the problem can be resolved.
Turn off notifications when a connection has only limited or no connectivity:
  lgpo.set:
  - name: NC_IpStateChecking
  - setting: Enabled
  - policy_class: User
