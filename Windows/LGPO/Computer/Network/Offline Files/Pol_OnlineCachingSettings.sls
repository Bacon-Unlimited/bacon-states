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
# LOCATION: \Computer\Network\Offline Files\Pol_OnlineCachingSettings.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting controls whether files read from file shares over a slow network are transparently cached in the Offline Files cache for future reads. When a user tries to access a file that has been transparently cached, Windows reads from the cached copy after verifying its integrity. This improves end-user response times and decreases bandwidth consumption over WAN links.
# 
# The cached files are temporary and are not available to the user when offline. The cached files are not kept in sync with the version on the server, and the most current version from the server is always available for subsequent reads.
# 
# This policy setting is triggered by the configured round trip network latency value. We recommend using this policy  setting when the network connection to the server is slow. For example, you can configure a value of 60 ms as the round trip latency of the network above which files should be transparently cached in the Offline Files cache. If the round trip latency of the network is less than 60ms, reads to remote files will not be cached.
# 
# If you enable this policy setting, transparent caching is enabled and configurable.
# 
# If you disable or do not configure this policy setting, remote files will be not be transparently cached on client computers.
Enable Transparent Caching:
  lgpo.set:
  - name: Pol_OnlineCachingSettings
  - setting:
      Lbl_OnlineCachingSettingsList: decimal-placeholder
  - policy_class: Machine
