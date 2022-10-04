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
# LOCATION: \Computer\Printers\RegisterSpoolerRemoteRpcEndPoint.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy controls whether the print spooler will accept client connections.
# 
# When the policy is unconfigured or enabled, the spooler will always accept client connections.
# 
# When the policy is disabled, the spooler will not accept client connections nor allow users to share printers.  All printers currently shared will continue to be shared.
# 
# The spooler must be restarted for changes to this policy to take effect.
Allow Print Spooler to accept client connections:
  lgpo.set:
  - name: RegisterSpoolerRemoteRpcEndPoint
  - setting: Enabled
  - policy_class: Machine
