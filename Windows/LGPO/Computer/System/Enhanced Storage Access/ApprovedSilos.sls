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
# LOCATION: \Computer\System\Enhanced Storage Access\ApprovedSilos.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to create a list of IEEE 1667 silos, compliant with the Institute of Electrical and Electronics Engineers, Inc. (IEEE) 1667 specification, that are usable on your computer.
# 
# If you enable this policy setting, only IEEE 1667 silos that match a silo type identifier specified in this policy are usable on your computer.
# 
# If you disable or do not configure this policy setting, all IEEE 1667 silos on Enhanced Storage devices are usable on your computer.
Configure list of IEEE 1667 silos usable on your computer:
  lgpo.set:
  - name: ApprovedSilos
  - setting:
      ApprovedSilos_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
