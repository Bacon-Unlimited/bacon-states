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
# LOCATION: \Computer\Windows Components\Maintenance Scheduler\ActivationBoundaryPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#           This policy setting allows you to configure Automatic Maintenance activation boundary.
# 
#           The maintenance activation boundary is the daily schduled time at which Automatic Maintenance starts
# 
#           If you enable this policy setting, this will override the default daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel.
# 
#           If you disable or do not configure this policy setting, the daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
#       
Automatic Maintenance Activation Boundary:
  lgpo.set:
  - name: ActivationBoundaryPolicy
  - setting:
      ActivationBoundary: text-placeholder
  - policy_class: Machine
