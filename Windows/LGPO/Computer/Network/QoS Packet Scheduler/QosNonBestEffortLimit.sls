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
# LOCATION: \Computer\Network\QoS Packet Scheduler\QosNonBestEffortLimit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Determines the percentage of connection bandwidth that the system can reserve. This value limits the combined bandwidth reservations of all programs running on the system.
# 
# By default, the Packet Scheduler limits the system to 80 percent of the bandwidth of a connection, but you can use this setting to override the default.
# 
# If you enable this setting, you can use the "Bandwidth limit" box to adjust the amount of bandwidth the system can reserve.
# 
# If you disable this setting or do not configure it, the system uses the default value of 80 percent of the connection.
# 
# Important: If a bandwidth limit is set for a particular network adapter in the registry, this setting is ignored when configuring that network adapter.
Limit reservable bandwidth:
  lgpo.set:
  - name: QosNonBestEffortLimit
  - setting:
      QosNonBestEffortLimit_Box: decimal-placeholder
  - policy_class: Machine
