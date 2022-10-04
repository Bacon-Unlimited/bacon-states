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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\MSPassport_UseDynamicLock.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Configure a comma separated list of signal rules in the form of xml for each signal type.
# 
# If you enable this policy setting, these signal rules will be evaluated to detect user absence and automatically lock the device.
# 
# If you disable or do not configure this policy setting, users can continue to lock with existing locking options.
# 
# For more information see: https://go.microsoft.com/fwlink/?linkid=849684
#         
Configure dynamic lock factors:
  lgpo.set:
  - name: MSPassport_UseDynamicLock
  - setting:
      MSPassport_UseDynamicLock_Plugins: text-placeholder
  - policy_class: Machine
