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
# LOCATION: \Computer\System\ShutdownReason.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# The Shutdown Event Tracker can be displayed when you shut down a workstation or server.  This is an extra set of questions that is displayed when you invoke a shutdown to collect information related to why you are shutting down the computer.
# 
# If you enable this setting and choose "Always" from the drop-down menu list, the Shutdown Event Tracker is displayed when the computer shuts down.
# 
# If you enable this policy setting and choose "Server Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running Windows Server. (See "Supported on" for supported versions.)
# 
# If you enable this policy setting and choose "Workstation Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running a client version of Windows. (See "Supported on" for supported versions.)
# 
# If you disable this policy setting, the Shutdown Event Tracker is not displayed when you shut down the computer.
# 
# If you do not configure this policy setting, the default behavior for the Shutdown Event Tracker occurs.
# 
# Note: By default, the Shutdown Event Tracker is only displayed on computers running Windows Server.
Display Shutdown Event Tracker:
  lgpo.set:
  - name: ShutdownReason
  - setting:
      ShutdownReason_Box: enum-placeholder
  - policy_class: Machine
