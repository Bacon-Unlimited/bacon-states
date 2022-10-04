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
# LOCATION: \Computer\System\Net Logon\Netlogon_ScavengeInterval.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines the interval at which Netlogon performs the following scavenging operations:
# 
# - Checks if a password on a secure channel needs to be modified, and modifies it if necessary.
# 
# - On the domain controllers (DC), discovers a DC that has not been discovered.
# 
# - On the PDC, attempts to add the <DomainName>[1B] NetBIOS name if it hasnt already been successfully added.
# 
# None of these operations are critical. 15 minutes is optimal in all but extreme cases. For instance, if a DC is separated from a trusted domain by an expensive (e.g., ISDN) line, this parameter might be adjusted upward to avoid frequent automatic discovery of DCs in a trusted domain.
# 
# To enable the setting, click Enabled, and then specify the interval in seconds.
Set scavenge interval:
  lgpo.set:
  - name: Netlogon_ScavengeInterval
  - setting:
      Netlogon_ScavengeIntervalLabel: decimal-placeholder
  - policy_class: Machine
