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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxJobsPerMachine.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the number of BITS jobs that can be created for all users of the computer. By default, BITS limits the total number of jobs that can be created on the computer to 300 jobs. You can use this policy setting to raise or lower the maximum number of user BITS jobs.
# 
#           If you enable this policy setting, BITS will limit the maximum number of BITS jobs to the specified number.
# 
#           If you disable or do not configure this policy setting, BITS will use the default BITS job limit of 300 jobs.
# 
#           Note: BITS jobs created by services and the local administrator account do not count toward this limit.
Limit the maximum number of BITS jobs for this computer:
  lgpo.set:
  - name: BITS_MaxJobsPerMachine
  - setting:
      BITS_MaxJobsPerMachineList: decimal-placeholder
  - policy_class: Machine