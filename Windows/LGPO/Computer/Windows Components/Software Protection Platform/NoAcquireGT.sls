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
# LOCATION: \Computer\Windows Components\Software Protection Platform\NoAcquireGT.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
#  
#     This policy setting lets you opt-out of sending KMS client activation data to Microsoft automatically. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.
#     If you disable or do not configure this policy setting, KMS client activation data will be sent to Microsoft services when this device activates. 
#     Policy Options: 
#         -   Not Configured (default -- data will be automatically sent to Microsoft)
#         -   Disabled (data will be automatically sent to Microsoft)
#         -   Enabled (data will not be sent to Microsoft)
#         
Turn off KMS Client Online AVS Validation:
  lgpo.set:
  - name: NoAcquireGT
  - setting: Enabled
  - policy_class: Machine
