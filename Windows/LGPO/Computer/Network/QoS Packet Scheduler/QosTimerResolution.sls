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
# LOCATION: \Computer\Network\QoS Packet Scheduler\QosTimerResolution.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Determines the smallest unit of time that the Packet Scheduler uses when scheduling packets for transmission. The Packet Scheduler cannot schedule packets for transmission more frequently than permitted by the value of this entry.
# 
# If you enable this setting, you can override the default timer resolution established for the system, usually units of 10 microseconds.
# 
# If you disable this setting or do not configure it, the setting has no effect on the system.
# 
# Important: If a timer resolution is specified in the registry for a particular network adapter, then this setting is ignored when configuring that network adapter.
Set timer resolution:
  lgpo.set:
  - name: QosTimerResolution
  - setting:
      QosTimerResolution_Box: decimal-placeholder
  - policy_class: Machine
