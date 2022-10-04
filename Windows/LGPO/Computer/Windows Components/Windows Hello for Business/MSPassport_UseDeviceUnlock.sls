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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\MSPassport_UseDeviceUnlock.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Configure a comma separated list of credential provider GUIDs, such as face and fingerprint provider GUIDs, to be used as the first and second unlock factors. If the trusted signal provider is specified as one of the unlock factors, you should also configure a comma separated list of signal rules in the form of xml for each signal type to be verified.
# 
# If you enable this policy setting, the user will have to use one factor from each list to successfully unlock.
# 
# If you disable or do not configure this policy setting, users can continue to unlock with existing unlock options.
# 
# For more information see: https://go.microsoft.com/fwlink/?linkid=849684
#         
Configure device unlock factors:
  lgpo.set:
  - name: MSPassport_UseDeviceUnlock
  - setting:
      MSPassport_UseDeviceUnlock_GroupA: text-placeholder
      MSPassport_UseDeviceUnlock_GroupB: text-placeholder
      MSPassport_UseDeviceUnlock_Plugins: text-placeholder
  - policy_class: Machine
