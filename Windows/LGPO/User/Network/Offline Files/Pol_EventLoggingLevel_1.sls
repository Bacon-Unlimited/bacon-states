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
# LOCATION: \User\Network\Offline Files\Pol_EventLoggingLevel_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines which events the Offline Files feature records in the event log.
# 
# Offline Files records events in the Application log in Event Viewer when it detects errors. By default, Offline Files records an event only when the offline files storage cache is corrupted. However, you can use this setting to specify additional events you want Offline Files to record.
# 
# To use this setting, in the "Enter" box, select the number corresponding to the events you want the system to log. The levels are cumulative; that is, each level includes the events in all preceding levels.
# 
# "0" records an error when the offline storage cache is corrupted.
# 
# "1" also records an event when the server hosting the offline file is disconnected from the network.
# 
# "2" also records events when the local computer is connected and disconnected from the network.
# 
# "3" also records an event when the server hosting the offline file is reconnected to the network.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Event logging level:
  lgpo.set:
  - name: Pol_EventLoggingLevel_1
  - setting:
      Lbl_EventLoggingLevelSpin: decimal-placeholder
  - policy_class: User
