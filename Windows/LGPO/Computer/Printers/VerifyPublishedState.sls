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
# LOCATION: \Computer\Printers\VerifyPublishedState.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Directs the system to periodically verify that the printers published by this computer still appear in Active Directory.  This setting also specifies how often the system repeats the verification.
# 
#             By default, the system only verifies published printers at startup. This setting allows for periodic verification while the computer is operating.
# 
#             To enable this additional verification, enable this setting, and then select a verification interval.
# 
#             To disable verification, disable this setting, or enable this setting and select "Never" for the verification interval.
Check published state:
  lgpo.set:
  - name: VerifyPublishedState
  - setting:
      VerifyPublishedStateTitle: enum-placeholder
  - policy_class: Machine
