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
# LOCATION: \Computer\Network\DNS Client\DNS_RegisterAdapterName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies if a computer performing dynamic DNS registration will register A and PTR resource records with a concatenation of its computer name and a connection-specific DNS suffix, in addition to registering these records with a concatenation of its computer name and the primary DNS suffix.
# 
# By default, a DNS client performing dynamic DNS registration registers A and PTR resource records with a concatenation of its computer name and the primary DNS suffix. For example, a computer name of mycomputer and a primary DNS suffix of microsoft.com will be registered as: mycomputer.microsoft.com.
# 
# If you enable this policy setting, a computer will register A and PTR resource records with its connection-specific DNS suffix, in addition to the primary DNS suffix. This applies to all network connections used by computers that receive this policy setting.
# 
# For example, with a computer name of mycomputer, a primary DNS suffix of microsoft.com, and a connection specific DNS suffix of VPNconnection, a computer will register A and PTR resource records for mycomputer.VPNconnection and mycomputer.microsoft.com when this policy setting is enabled.
# 
# Important: This policy setting is ignored on a DNS client computer if dynamic DNS registration is disabled.
# 
# If you disable this policy setting, or if you do not configure this policy setting, a DNS client computer will not register any A and PTR resource records using a connection-specific DNS suffix.
Register DNS records with connection-specific DNS suffix:
  lgpo.set:
  - name: DNS_RegisterAdapterName
  - setting: Enabled
  - policy_class: Machine
