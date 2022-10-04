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
# LOCATION: \Computer\Windows Components\Maintenance Scheduler\RandomDelayPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#           This policy setting allows you to configure Automatic Maintenance activation random delay.
# 
#           The maintenance random delay is the amount of time up to which Automatic Maintenance will delay starting from its Activation Boundary.
# 
#           If you enable this policy setting, Automatic Maintenance will delay starting from its Activation Boundary, by upto this time.
# 
#           If you do not configure this policy setting, 4 hour random delay will be applied to Automatic Maintenance.
# 
#           If you disable this policy setting, no random delay will be applied to Automatic Maintenance.
#       
Automatic Maintenance Random Delay:
  lgpo.set:
  - name: RandomDelayPolicy
  - setting:
      RandomDelay: text-placeholder
  - policy_class: Machine
