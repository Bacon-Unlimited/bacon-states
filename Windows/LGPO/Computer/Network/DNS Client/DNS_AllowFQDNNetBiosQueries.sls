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
# LOCATION: \Computer\Network\DNS Client\DNS_AllowFQDNNetBiosQueries.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Specifies that NetBIOS over TCP/IP (NetBT) queries are issued for fully qualified domain names. 
# 
# If you enable this policy setting, NetBT queries will be issued for multi-label and fully qualified domain names such as "www.example.com" in addition to single-label names.  
# 
# If you disable this policy setting, or if you do not configure this policy setting, NetBT queries will only be issued for single-label names such as "example" and not for multi-label and fully qualified domain names.
Allow NetBT queries for fully qualified domain names:
  lgpo.set:
  - name: DNS_AllowFQDNNetBiosQueries
  - setting: Enabled
  - policy_class: Machine
