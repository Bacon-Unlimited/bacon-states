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
# LOCATION: \Computer\System\Group Policy\EnableLogonOptimizationOnServerSKU.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# 
#         This policy setting allows you to configure Group Policy caching behavior on Windows Server machines.
#         If you enable this policy setting, Group Policy caches policy information after every background processing session. This cache saves applicable GPOs and the settings contained within them. When Group Policy runs in synchronous foreground mode, it refers to this cache, which enables it to run faster. When the cache is read, Group Policy attempts to contact a logon domain controller to determine the link speed. When Group Policy runs in background mode or asynchronous foreground mode, it continues to download the latest version of the policy information, and it uses a bandwidth estimate to determine slow link thresholds. (See the Configure Group Policy Slow Link Detection policy setting to configure asynchronous foreground behavior.)
#         The slow link value that is defined in this policy setting determines how long Group Policy will wait for a response from the domain controller before reporting the link speed as slow. The default is 500 milliseconds.
#         The timeout value that is defined in this policy setting determines how long Group Policy will wait for a response from the domain controller before determining that there is no network connectivity. This stops the current Group Policy processing. Group Policy will run in the background the next time a connection to a domain controller is established. Setting this value too high might result in longer waits for the user at boot or logon. The default is 5000 milliseconds.
#         If you disable or do not configure this policy setting, the Group Policy client will not cache applicable GPOs or settings that are contained within the GPOs. When Group Policy runs synchronously, it downloads the latest version of the policy from the network and uses bandwidth estimates to determine slow link thresholds. (See the Configure Group Policy Slow Link Detection policy setting to configure asynchronous foreground behavior.)
#       
Enable Group Policy Caching for Servers:
  lgpo.set:
  - name: EnableLogonOptimizationOnServerSKU
  - setting:
      SyncModeNoDCThreshold1: decimal-placeholder
      SyncModeSlowLinkThreshold1: decimal-placeholder
  - policy_class: Machine
