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
# LOCATION: \Computer\Network\Offline Files\Pol_SyncOnCostedNetwork.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting determines whether offline files are synchronized in the background when it could result in extra charges on cell phone or broadband plans.
# 
# If you enable this setting, synchronization can occur in the background when the user's network is roaming, near, or over the plan's data limit.  This may result in extra charges on cell phone or broadband plans.
# 
# If this setting is disabled or not configured, synchronization will not run in the background on network folders when the user's network is roaming, near, or over the plan's data limit. The network folder must also be in "slow-link" mode, as specified by the "Configure slow-link mode" policy to avoid network usage.
Enable file synchronization on costed networks:
  lgpo.set:
  - name: Pol_SyncOnCostedNetwork
  - setting: Enabled
  - policy_class: Machine
